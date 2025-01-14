defmodule MossPigletWeb.ModernFormComponents do
  @moduledoc """
  Modern, responsive form components with improved UX and accessibility.
  """

  use MossPigletWeb, :html

  attr :page_title, :string, required: true
  attr :description, :string, required: true

  def modern_heading(assigns) do
    ~H"""
    <div class="mx-auto max-w-4xl text-center">
      <h1 class="text-balance text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl lg:text-5xl">
        {@page_title}
      </h1>
      <p class="mt-4 text-lg text-gray-600 max-w-2xl mx-auto">
        {@description}
      </p>
    </div>
    """
  end

  attr :id, :string, required: true
  attr :phx_change, :string
  attr :phx_submit, :string, required: true
  attr :form, Phoenix.HTML.Form, required: true

  def modern_intake_form(assigns) do
    ~H"""
    <div class="mx-auto max-w-4xl">
      <.simple_form for={@form} id={@id} phx-change={@phx_change} phx-submit={@phx_submit}>
        <!-- Progress Steps -->
        <div class="mb-8">
          <.progress_steps current_step={1} total_steps={8} />
        </div>
        
    <!-- Form Sections -->
        <div class="space-y-8">
          <!-- Contact Information -->
          <.form_section
            title="Contact Information"
            description="Let's start with your basic information"
            icon="user"
          >
            <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
              <.modern_input field={@form[:name]} label="Full Name" required />
              <.modern_input field={@form[:company]} label="Company" required />
            </div>
            <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
              <.modern_input field={@form[:email]} type="email" label="Email Address" required />
              <.modern_input
                field={@form[:website]}
                label="Website"
                placeholder="https://example.com"
              />
            </div>
          </.form_section>
          
    <!-- Project Overview -->
          <.form_section
            title="Project Overview"
            description="Tell us about your project goals and requirements"
            icon="lightbulb"
          >
            <.modern_textarea
              field={@form[:goal]}
              label="What is the primary goal of your website?"
              placeholder="e.g., showcase our portfolio, sell products online, generate leads..."
              rows={3}
              required
            />
            <.modern_textarea
              field={@form[:features]}
              label="What specific features do you want?"
              placeholder="e.g., contact forms, image galleries, blog, e-commerce, user accounts..."
              rows={3}
              required
            />
            <.modern_input
              field={@form[:audience]}
              label="Who is your target audience?"
              placeholder="e.g., young professionals, small businesses, local community..."
              required
            />
          </.form_section>
          
    <!-- Design Preferences -->
          <.form_section
            title="Design Preferences"
            description="Help us understand your visual preferences"
            icon="palette"
          >
            <.modern_textarea
              field={@form[:branding]}
              label="Do you have existing branding materials?"
              placeholder="Describe your logos, color schemes, fonts, or brand guidelines..."
              rows={3}
              required
            />
            <.modern_textarea
              field={@form[:admire]}
              label="List 3 websites you admire and why"
              placeholder="Include URLs and explain what you like about each site..."
              rows={4}
              required
            />
            <.modern_select
              field={@form[:style]}
              label="What style or tone should your website convey?"
              options={[
                {"Professional & Corporate", "professional"},
                {"Casual & Friendly", "casual"},
                {"Modern & Minimalist", "modern"},
                {"Creative & Artistic", "creative"},
                {"Other (please specify in comments)", "other"}
              ]}
              required
            />
          </.form_section>
          
    <!-- Content Strategy -->
          <.form_section
            title="Content Strategy"
            description="Let's plan your website content"
            icon="document-text"
          >
            <.modern_input
              field={@form[:content]}
              label="Who will provide the website content?"
              placeholder="e.g., we have content ready, need help creating content..."
              required
            />
            <.modern_radio_group
              field={@form[:assistance]}
              label="Do you need assistance with content creation?"
              options={[
                {"Yes, full content creation support", "full"},
                {"Yes, just copywriting help", "copywriting"},
                {"No, we'll provide our own content", "none"}
              ]}
              required
            />
            <.modern_textarea
              field={@form[:key_info]}
              label="What key messages must be included?"
              placeholder="Essential information, unique selling points, important announcements..."
              rows={3}
              required
            />
          </.form_section>
          
    <!-- Technical Requirements -->
          <.form_section
            title="Technical Requirements"
            description="Technical specifications and integrations"
            icon="cog"
          >
            <.modern_input
              field={@form[:cms]}
              label="Preferred content management system?"
              placeholder="e.g., WordPress, Shopify, custom solution, no preference..."
              required
            />
            <.modern_textarea
              field={@form[:integrations]}
              label="Required integrations"
              placeholder="e.g., payment processors, CRM systems, email marketing, social media..."
              rows={3}
              required
            />
            <.modern_select
              field={@form[:hosting]}
              label="Hosting situation"
              options={[
                {"I have a hosting provider", "existing"},
                {"I need hosting recommendations", "need_recommendations"},
                {"Please handle hosting for me", "full_service"},
                {"Not sure yet", "unsure"}
              ]}
              required
            />
          </.form_section>
          
    <!-- Budget and Timeline -->
          <.form_section
            title="Budget & Timeline"
            description="Project scope and timing"
            icon="calendar"
          >
            <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
              <.modern_select
                field={@form[:budget]}
                label="Project budget range"
                options={[
                  {"Under $5,000", "under_5k"},
                  {"$5,000 - $15,000", "5k_15k"},
                  {"$15,000 - $30,000", "15k_30k"},
                  {"$30,000 - $50,000", "30k_50k"},
                  {"Over $50,000", "over_50k"},
                  {"Let's discuss", "discuss"}
                ]}
                required
              />
              <.modern_select
                field={@form[:timeline]}
                label="Desired timeline"
                options={[
                  {"ASAP (rush job)", "asap"},
                  {"1-2 months", "1_2_months"},
                  {"3-4 months", "3_4_months"},
                  {"5-6 months", "5_6_months"},
                  {"No rush", "flexible"}
                ]}
                required
              />
            </div>
            <.modern_textarea
              field={@form[:milestones]}
              label="Critical milestones or deadlines"
              placeholder="Important launch dates, events, or deadlines we should know about..."
              rows={2}
            />
          </.form_section>
          
    <!-- Support & Maintenance -->
          <.form_section
            title="Support & Maintenance"
            description="Ongoing website care"
            icon="wrench-screwdriver"
          >
            <.modern_checkbox
              field={@form[:support]}
              label="I'm interested in ongoing maintenance and support"
              description="Regular updates, security monitoring, and technical support"
            />
            <.modern_input
              field={@form[:future_updates]}
              label="Who will update website content?"
              placeholder="e.g., our team will handle it, need training, want full support..."
              required
            />
          </.form_section>
          
    <!-- Additional Information -->
          <.form_section
            title="Additional Information"
            description="Anything else we should know?"
            icon="chat-bubble-left-right"
          >
            <.modern_textarea
              field={@form[:extra_info]}
              label="Tell us more about your business or project"
              placeholder="Company background, special requirements, concerns, or anything else that would help us understand your needs..."
              rows={4}
            />
            <.modern_select
              field={@form[:referral]}
              label="How did you hear about us?"
              options={[
                {"Google search", "google"},
                {"Referral from friend/colleague", "referral"},
                {"Social media", "social"},
                {"Previous client", "previous_client"},
                {"Industry publication", "publication"},
                {"Other", "other"}
              ]}
              required
            />
          </.form_section>
        </div>
        
    <!-- Form Actions -->
        <:actions>
          <div class="flex flex-col sm:flex-row sm:justify-between sm:items-center gap-4 pt-8 border-t border-gray-200">
            <p class="text-sm text-gray-500 order-2 sm:order-1">
              <.icon name="hero-shield-check" class="w-4 h-4 inline mr-1" />
              We never share or sell your information.
            </p>
            <div class="flex gap-3 order-1 sm:order-2">
              <.modern_button
                :if={!@form.source.valid?}
                type="button"
                variant="secondary"
                disabled
              >
                Complete form to continue
              </.modern_button>
              <.modern_button
                :if={@form.source.valid?}
                type="submit"
                phx-disable-with="Sending your inquiry..."
              >
                Send Inquiry <.icon name="hero-paper-airplane" class="w-4 h-4 ml-2" />
              </.modern_button>
            </div>
          </div>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  # Progress Steps Component
  attr :current_step, :integer, required: true
  attr :total_steps, :integer, required: true

  def progress_steps(assigns) do
    ~H"""
    <div class="hidden sm:block">
      <div class="flex items-center justify-center">
        <div class="flex items-center space-x-4">
          <div class="flex items-center space-x-2">
            <div class="w-2 h-2 bg-emerald-600 rounded-full"></div>
            <span class="text-sm font-medium text-emerald-600">
              Step {@current_step} of {@total_steps}
            </span>
          </div>
        </div>
      </div>
    </div>
    """
  end

  # Form Section Component
  attr :title, :string, required: true
  attr :description, :string, required: true
  attr :icon, :string, required: true
  slot :inner_block, required: true

  def form_section(assigns) do
    ~H"""
    <div class="bg-white rounded-xl border border-gray-200 shadow-sm hover:shadow-md transition-shadow duration-200">
      <div class="p-6 sm:p-8">
        <div class="flex items-start space-x-4 mb-6">
          <div class="flex-shrink-0">
            <div class="w-10 h-10 bg-emerald-100 rounded-lg flex items-center justify-center">
              <.icon name={"hero-#{@icon}"} class="w-5 h-5 text-emerald-600" />
            </div>
          </div>
          <div>
            <h3 class="text-lg font-semibold text-gray-900">{@title}</h3>
            <p class="text-sm text-gray-600 mt-1">{@description}</p>
          </div>
        </div>
        <div class="space-y-6">
          {render_slot(@inner_block)}
        </div>
      </div>
    </div>
    """
  end

  # Modern Input Component
  attr :field, Phoenix.HTML.FormField, required: true
  attr :label, :string, required: true
  attr :type, :string, default: "text"
  attr :placeholder, :string, default: nil
  attr :required, :boolean, default: false
  attr :rest, :global

  def modern_input(assigns) do
    ~H"""
    <div>
      <label for={@field.id} class="block text-sm font-medium text-gray-900 mb-2">
        {@label}
        <span :if={@required} class="text-red-500 ml-1">*</span>
      </label>
      <input
        type={@type}
        name={@field.name}
        id={@field.id}
        value={Phoenix.HTML.Form.normalize_value(@type, @field.value)}
        placeholder={@placeholder}
        required={@required}
        class={[
          "block w-full rounded-lg border-0 py-3 px-4 text-gray-900 shadow-sm ring-1 ring-inset",
          "placeholder:text-gray-400 focus:ring-2 focus:ring-inset",
          "transition-colors duration-200 sm:text-sm sm:leading-6",
          @field.errors == [] && "ring-gray-300 focus:ring-emerald-600",
          @field.errors != [] && "ring-red-300 focus:ring-red-600"
        ]}
        {@rest}
      />
      <.field_error :for={msg <- @field.errors}>{msg}</.field_error>
    </div>
    """
  end

  # Modern Textarea Component
  attr :field, Phoenix.HTML.FormField, required: true
  attr :label, :string, required: true
  attr :placeholder, :string, default: nil
  attr :required, :boolean, default: false
  attr :rows, :integer, default: 4
  attr :rest, :global

  def modern_textarea(assigns) do
    ~H"""
    <div>
      <label for={@field.id} class="block text-sm font-medium text-gray-900 mb-2">
        {@label}
        <span :if={@required} class="text-red-500 ml-1">*</span>
      </label>
      <textarea
        name={@field.name}
        id={@field.id}
        rows={@rows}
        placeholder={@placeholder}
        required={@required}
        class={[
          "block w-full rounded-lg border-0 py-3 px-4 text-gray-900 shadow-sm ring-1 ring-inset",
          "placeholder:text-gray-400 focus:ring-2 focus:ring-inset resize-none",
          "transition-colors duration-200 sm:text-sm sm:leading-6",
          @field.errors == [] && "ring-gray-300 focus:ring-emerald-600",
          @field.errors != [] && "ring-red-300 focus:ring-red-600"
        ]}
        {@rest}
      >{Phoenix.HTML.Form.normalize_value("textarea", @field.value)}</textarea>
      <.field_error :for={msg <- @field.errors}>{msg}</.field_error>
    </div>
    """
  end

  # Modern Select Component
  attr :field, Phoenix.HTML.FormField, required: true
  attr :label, :string, required: true
  attr :options, :list, required: true
  attr :required, :boolean, default: false
  attr :rest, :global

  def modern_select(assigns) do
    ~H"""
    <div>
      <label for={@field.id} class="block text-sm font-medium text-gray-900 mb-2">
        {@label}
        <span :if={@required} class="text-red-500 ml-1">*</span>
      </label>
      <select
        name={@field.name}
        id={@field.id}
        required={@required}
        class={[
          "block w-full rounded-lg border-0 py-3 px-4 text-gray-900 shadow-sm ring-1 ring-inset",
          "focus:ring-2 focus:ring-inset transition-colors duration-200 sm:text-sm sm:leading-6",
          @field.errors == [] && "ring-gray-300 focus:ring-emerald-600",
          @field.errors != [] && "ring-red-300 focus:ring-red-600"
        ]}
        {@rest}
      >
        <option value="">Choose an option...</option>
        {Phoenix.HTML.Form.options_for_select(@options, @field.value)}
      </select>
      <.field_error :for={msg <- @field.errors}>{msg}</.field_error>
    </div>
    """
  end

  # Modern Radio Group Component
  attr :field, Phoenix.HTML.FormField, required: true
  attr :label, :string, required: true
  attr :options, :list, required: true
  attr :required, :boolean, default: false

  def modern_radio_group(assigns) do
    ~H"""
    <div>
      <fieldset>
        <legend class="block text-sm font-medium text-gray-900 mb-4">
          {@label}
          <span :if={@required} class="text-red-500 ml-1">*</span>
        </legend>
        <div class="space-y-3">
          <div :for={{label, value} <- @options} class="flex items-start">
            <div class="flex items-center h-5">
              <input
                type="radio"
                name={@field.name}
                id={"#{@field.id}_#{value}"}
                value={value}
                checked={@field.value == value}
                required={@required}
                class="h-4 w-4 border-gray-300 text-emerald-600 focus:ring-emerald-600 focus:ring-2"
              />
            </div>
            <div class="ml-3">
              <label
                for={"#{@field.id}_#{value}"}
                class="text-sm font-medium text-gray-700 cursor-pointer"
              >
                {label}
              </label>
            </div>
          </div>
        </div>
      </fieldset>
      <.field_error :for={msg <- @field.errors}>{msg}</.field_error>
    </div>
    """
  end

  # Modern Checkbox Component
  attr :field, Phoenix.HTML.FormField, required: true
  attr :label, :string, required: true
  attr :description, :string, default: nil

  def modern_checkbox(assigns) do
    assigns =
      assign_new(assigns, :checked, fn ->
        Phoenix.HTML.Form.normalize_value("checkbox", assigns.field.value)
      end)

    ~H"""
    <div class="relative flex items-start">
      <div class="flex items-center h-5">
        <input type="hidden" name={@field.name} value="false" />
        <input
          type="checkbox"
          name={@field.name}
          id={@field.id}
          value="true"
          checked={@checked}
          class="h-4 w-4 rounded border-gray-300 text-emerald-600 focus:ring-emerald-600 focus:ring-2"
        />
      </div>
      <div class="ml-3">
        <label for={@field.id} class="text-sm font-medium text-gray-700 cursor-pointer">
          {@label}
        </label>
        <p :if={@description} class="text-sm text-gray-500 mt-1">{@description}</p>
      </div>
    </div>
    """
  end

  # Modern Button Component
  attr :type, :string, default: "button"
  attr :variant, :string, default: "primary", values: ~w(primary secondary)
  attr :disabled, :boolean, default: false
  attr :rest, :global
  slot :inner_block, required: true

  def modern_button(assigns) do
    ~H"""
    <button
      type={@type}
      disabled={@disabled}
      class={[
        "inline-flex items-center justify-center rounded-lg px-6 py-3 text-sm font-semibold",
        "transition-all duration-200 focus:outline-none focus:ring-2 focus:ring-offset-2",
        @variant == "primary" && !@disabled &&
          "bg-emerald-600 text-white hover:bg-emerald-500 focus:ring-emerald-600 shadow-sm",
        @variant == "secondary" && !@disabled &&
          "bg-white text-gray-900 ring-1 ring-inset ring-gray-300 hover:bg-gray-50 focus:ring-emerald-600",
        @disabled && "bg-gray-100 text-gray-400 cursor-not-allowed ring-1 ring-inset ring-gray-200"
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </button>
    """
  end

  # Field Error Component
  slot :inner_block, required: true

  def field_error(assigns) do
    ~H"""
    <p class="mt-2 text-sm text-red-600 flex items-center">
      <.icon name="hero-exclamation-circle-mini" class="w-4 h-4 mr-1 flex-shrink-0" />
      {render_slot(@inner_block)}
    </p>
    """
  end
end
