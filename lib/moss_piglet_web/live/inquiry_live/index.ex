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
      |> assign(:page_title, "New Client Inquiry")
      |> assign(:form, to_form(changeset))
      |> assign(:contact, contact)
      |> assign(
        :description,
        "Take a moment to fill out the intake form below to see if we can help. We'll be in touch within 24-48 business hours (M-F)."
      )

    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="isolate bg-white px-6 py-24 sm:py-32 lg:px-8">
      <div
        class="absolute inset-x-0 top-[-10rem] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[-20rem]"
        aria-hidden="true"
      >
        <div
          class="relative left-1/2 -z-10 aspect-[1155/678] w-[36.125rem] max-w-none -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#6ee7b7] to-[#10b981] opacity-30 sm:left-[calc(50%-40rem)] sm:w-[72.1875rem]"
          style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"
        >
        </div>
      </div>
      <.heading page_title={@page_title} description={@description} />
      <.intake_form form={@form} id="contact-form" phx_change="validate" phx_submit="save" />
      <.back navigate={~p"/"}>
        Back
      </.back>
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
            "Thank you for reaching out, your email has been sent to us sucessfully! We will respond to you within 24-48 business hours (M-F). Have a great day! 🥳"
          )
          |> push_navigate(to: ~p"/")

        {:noreply, socket}

      {:error, _error} ->
        socket =
          socket
          |> put_flash(
            :error,
            "Oh boy! There was an error sending your email. Please reach out to us directly at hello@mosspiglet.dev."
          )
          |> push_navigate(to: ~p"/")

        {:noreply, socket}
    end
  end
end
