defmodule MossPigletWeb.InquiryLive.Index do
  use MossPigletWeb, :live_view

  import MossPigletWeb.CustomComponents

  alias MossPiglet.Accounts
  alias MossPiglet.Accounts.{Contact, ContactNotifier}

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, _uri, socket) do
    contact = %Contact{}

    changeset = Accounts.change_contact(contact)

    socket =
      socket
      |> assign(:page_title, "Let's Build Something Great")
      |> assign(:form, to_form(changeset))
      |> assign(:contact, contact)
      |> assign(
        :description,
        "Tell us about your project and we'll get back to you within 24-48 hours."
      )

    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gradient-to-b from-emerald-50/50 to-white">
      <div class="mx-auto max-w-3xl px-4 py-16 sm:px-6 sm:py-24 lg:px-8">
        <.heading page_title={@page_title} description={@description} />
        <.intake_form form={@form} id="contact-form" phx_change="validate" phx_submit="save" />
        <div class="mt-8 text-center">
          <.link
            navigate={~p"/"}
            class="text-sm text-gray-500 hover:text-emerald-600 transition-colors"
          >
            ← Back to home
          </.link>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("validate", %{"contact" => contact_params}, socket) do
    changeset = Accounts.change_contact(socket.assigns.contact, contact_params)
    socket = assign(socket, :form, to_form(changeset, action: :validate))
    {:noreply, socket}
  end

  def handle_event("save", %{"contact" => contact_params}, socket) do
    email = contact_params["email"]
    name = contact_params["name"]

    case ContactNotifier.deliver_new_intake_form({name, email}, contact_params) do
      {:ok, _email} ->
        socket =
          socket
          |> put_flash(
            :info,
            "Thank you! We've received your inquiry and will be in touch within 24-48 hours. 🎉"
          )
          |> push_navigate(to: ~p"/")

        {:noreply, socket}

      {:error, _error} ->
        socket =
          socket
          |> put_flash(
            :error,
            "Something went wrong. Please email us directly at hello@mosspiglet.dev."
          )
          |> push_navigate(to: ~p"/")

        {:noreply, socket}
    end
  end
end
