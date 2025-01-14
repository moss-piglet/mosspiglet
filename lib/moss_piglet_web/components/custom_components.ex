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
              type="select"
              label="What are you looking to build?"
              prompt="Select a project type"
              options={[
                "Custom encrypted web application": "custom-encrypted-web-app",
                "Mobile application (iOS/Android)": "mobile-app",
                "Elixir/Rust package or library development": "package-library-dev",
                "Cryptographic integration or consulting": "crypto-integration-consulting",
                "Privacy-first SaaS platform": "privacy-saas",
                "Real-time system or API": "realtime-system-api",
                "Post-quantum encryption implementation": "pq-encryption-impl",
                Other: "other"
              ]}
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
                  "Under $10,000 (micro-purchase)": "under-10k",
                  "$10,000 – $50,000": "10k-50k",
                  "$50,000 – $150,000": "50k-150k",
                  "$150,000 – $500,000": "150k-500k",
                  "$500,000 – $1M": "500k-1m",
                  "$1M+": "1m-plus",
                  "Not sure / Need scoping": "need-scoping"
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
                  "1–3 months": "1-3-months",
                  "3–6 months": "3-6-months",
                  "6–12 months": "6-12-months",
                  "12+ months": "12-plus-months",
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
              type="select"
              label="How did you hear about us?"
              prompt="Select an option"
              options={[
                "SAM.gov / Government contract search": "sam-gov",
                GitHub: "github",
                "Hex.pm": "hex-pm",
                LinkedIn: "linkedin",
                Bluesky: "bluesky",
                "Elixir Forum": "elixir-forum",
                "dev.to": "dev-to",
                Referral: "referral",
                "Search engine": "search-engine",
                Other: "other"
              ]}
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
            Your information is never shared or sold.
          </p>
        </div>
      </:actions>
    </.simple_form>
    """
  end
end
