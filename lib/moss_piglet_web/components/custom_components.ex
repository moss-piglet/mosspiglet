defmodule MossPigletWeb.CustomComponents do
  @moduledoc false

  use MossPigletWeb, :html

  attr :page_title, :string, required: true
  attr :description, :string, required: true

  def heading(assigns) do
    ~H"""
    <div class="mx-auto max-w-2xl text-center">
      <h1 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">
        {@page_title}
      </h1>
      <p class="mt-4 text-lg text-gray-600">
        {@description}
      </p>
    </div>
    """
  end

  attr :id, :string, required: true
  attr :phx_change, :string
  attr :phx_submit, :string, required: true
  attr :form, Phoenix.HTML.Form, required: true

  def intake_form(assigns) do
    ~H"""
    <.simple_form for={@form} id={@id} phx-change={@phx_change} phx-submit={@phx_submit} class="mt-12">
      <div class="space-y-8">
        <div class="bg-white rounded-2xl shadow-sm ring-1 ring-gray-900/5 p-6 sm:p-8">
          <h2 class="text-lg font-semibold text-gray-900 mb-6 flex items-center gap-2">
            <span class="flex items-center justify-center w-8 h-8 rounded-full bg-emerald-100 text-emerald-600 text-sm font-bold">
              1
            </span>
            Your Information
          </h2>
          <div class="grid gap-6 sm:grid-cols-2">
            <.input field={@form[:name]} label="Name" required phx-debounce="blur" />
            <.input field={@form[:email]} type="email" label="Email" required phx-debounce="blur" />
            <.input field={@form[:company]} label="Company" phx-debounce="blur" />
            <.input
              field={@form[:website]}
              label="Website"
              placeholder="https://"
              phx-debounce="blur"
            />
          </div>
        </div>

        <div class="bg-white rounded-2xl shadow-sm ring-1 ring-gray-900/5 p-6 sm:p-8">
          <h2 class="text-lg font-semibold text-gray-900 mb-6 flex items-center gap-2">
            <span class="flex items-center justify-center w-8 h-8 rounded-full bg-emerald-100 text-emerald-600 text-sm font-bold">
              2
            </span>
            About Your Project
          </h2>
          <div class="space-y-6">
            <.input
              field={@form[:goal]}
              type="textarea"
              label="What are you looking to build?"
              placeholder="Tell us about your project idea, goals, and what you're hoping to achieve..."
              required
              phx-debounce="blur"
            />
            <div class="grid gap-6 sm:grid-cols-2">
              <.input
                field={@form[:budget]}
                type="select"
                label="Budget Range"
                prompt="Select a range"
                options={[
                  "$5k - $10k": "5k-10k",
                  "$10k - $25k": "10k-25k",
                  "$25k - $50k": "25k-50k",
                  "$50k+": "50k+"
                ]}
                required
                phx-debounce="blur"
              />
              <.input
                field={@form[:timeline]}
                type="select"
                label="Timeline"
                prompt="Select a timeline"
                options={[
                  ASAP: "asap",
                  "1-2 months": "1-2-months",
                  "3-6 months": "3-6-months",
                  Flexible: "flexible"
                ]}
                phx-debounce="blur"
              />
            </div>
          </div>
        </div>

        <div class="bg-gray-50 rounded-2xl p-6 sm:p-8">
          <h2 class="text-lg font-semibold text-gray-900 mb-6 flex items-center gap-2">
            <span class="flex items-center justify-center w-8 h-8 rounded-full bg-emerald-100 text-emerald-600 text-sm font-bold">
              3
            </span>
            Additional Details <span class="ml-2 text-sm font-normal text-gray-500">(Optional)</span>
          </h2>
          <div class="space-y-6">
            <.input
              field={@form[:features]}
              type="textarea"
              label="Key features needed"
              placeholder="User authentication, payment processing, dashboards, etc."
              phx-debounce="blur"
            />
            <.input
              field={@form[:extra_info]}
              type="textarea"
              label="Anything else we should know?"
              placeholder="Share any other details that would help us understand your project better..."
              phx-debounce="blur"
            />
            <.input
              field={@form[:referral]}
              label="How did you hear about us?"
              placeholder="Google, referral, social media..."
              phx-debounce="blur"
            />
          </div>
        </div>
      </div>

      <:actions>
        <div class="mt-8 flex flex-col sm:flex-row items-center gap-4">
          <.button
            class={[
              "w-full sm:w-auto px-8 py-3 text-base",
              !@form.source.valid? && "bg-gray-300 hover:bg-gray-300 cursor-not-allowed"
            ]}
            disabled={!@form.source.valid?}
            phx-disable-with="Sending..."
          >
            Submit Inquiry
          </.button>
          <p class="text-sm text-gray-500">
            <.icon name="hero-lock-closed-micro" class="w-4 h-4 inline-block mr-1" />
            We'll never share your information.
          </p>
        </div>
      </:actions>
    </.simple_form>
    """
  end
end
