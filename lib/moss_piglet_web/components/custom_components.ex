defmodule MossPigletWeb.CustomComponents do
  @moduledoc false

  use MossPigletWeb, :html

  attr :page_title, :string, required: true
  attr :description, :string, required: true

  def heading(assigns) do
    ~H"""
    <div class="mx-auto max-w-2xl text-center">
      <h2 class="text-balance text-4xl font-semibold tracking-tight text-gray-900 sm:text-5xl">
        {@page_title}
      </h2>
      <p class="mt-2 text-lg/8 text-gray-600">
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
    <.simple_form for={@form} id={@id} phx-change={@phx_change} phx-submit={@phx_submit}>
      <div class="px-4 py-6 space-y-4 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Contact Information</h2>
        <.input field={@form[:name]} label="Name" autocomplete="off" required />
        <.input field={@form[:company]} label="Company" autocomplete="off" required />
        <.input field={@form[:email]} type="email" label="Email" autocomplete="off" required />
        <.input field={@form[:website]} label="Website" autocomplete="off" />
      </div>

      <div class="px-4 py-6 space-y-4 bg-gradient-to-r from-brand-300 to-brand-500 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Project Overview</h2>
        <.input
          field={@form[:goal]}
          type="textarea"
          label="What is the primary goal of your website?"
          autocomplete="off"
          placeholder="informational, e-commerce, portfolio, etc."
          required
        />
        <.input
          field={@form[:features]}
          type="textarea"
          label="What specific features do you want on your website?"
          autocomplete="off"
          placeholder="contact forms, galleries, blogs, e-commerce functionality, etc."
          required
        />
        <.input
          field={@form[:audience]}
          label="Who is your target audience?"
          autocomplete="off"
          placeholder="demographics, interests, etc."
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Design Preferences</h2>
        <.input
          field={@form[:branding]}
          type="textarea"
          label="Do you have any existing branding materials?"
          autocomplete="off"
          placeholder="logos, color schemes, fonts, etc."
          required
        />
        <.input
          field={@form[:admire]}
          type="textarea"
          label="List 3 websites you admire and why:"
          autocomplete="off"
          required
        />
        <.input
          field={@form[:style]}
          type="select"
          label="What style or tone do you want your website to convey?"
          prompt="Choose a style"
          options={[Professional: "professional", Casual: "casual", Modern: "modern", Other: "other"]}
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4 bg-gradient-to-r from-brand-300 to-brand-500 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Content</h2>
        <.input
          field={@form[:content]}
          label="Who will provide the content for the website (text, images, videos, etc.)?"
          autocomplete="off"
          required
        />
        <.input
          field={@form[:assistance]}
          label="Do you need assistance with content creation?"
          autocomplete="off"
          placeholder="Yes, with copywriting et al. / No, we will provide our own content."
          required
        />
        <.input
          field={@form[:key_info]}
          label="What key messages or info must be included on your website?"
          autocomplete="off"
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Technical Requirements</h2>
        <.input
          field={@form[:cms]}
          label="Do you have a preferred content management system (CMS)?"
          autocomplete="off"
          placeholder="WordPress, Shopify, etc."
          required
        />
        <.input
          field={@form[:integrations]}
          label="Do you need any specific integrations?"
          autocomplete="off"
          placeholder="payment gateways, CRM systems, social media"
          required
        />
        <.input
          field={@form[:hosting]}
          label="What is your hosting situation?"
          autocomplete="off"
          placeholder="I have a provider... / I need recommendations"
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4 bg-gradient-to-r from-brand-300 to-brand-500 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Budget and Timeline</h2>
        <.input
          field={@form[:budget]}
          label="What is your budget for this project?"
          autocomplete="off"
          required
        />
        <.input
          field={@form[:timeline]}
          label="What is your desired timeline for completion?"
          autocomplete="off"
          required
        />
        <.input
          field={@form[:milestones]}
          type="textarea"
          label="Are there any critical milestones we should be aware of?"
          autocomplete="off"
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4  border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Maintenance and Support</h2>
        <.input
          field={@form[:support]}
          type="checkbox"
          label="Ongoing maintenance and support?"
          autocomplete="off"
        />
        <.input
          field={@form[:future_updates]}
          label="Who will be responsible for updating the website content?"
          autocomplete="off"
          required
        />
      </div>

      <div class="px-4 py-6 space-y-4 bg-gradient-to-r from-brand-300 to-brand-500 border-2 border-brand-700 rounded-md">
        <h2 class="mb-2 b-2 border-b-2 border-brand-700">Additional Information</h2>
        <.input
          field={@form[:extra_info]}
          type="textarea"
          label="Is there anything else we should know about your business or project?"
          autocomplete="off"
          required
        />
        <.input
          field={@form[:referral]}
          label="How did you hear about us?"
          autocomplete="off"
          placeholder="referral, search engine, social media, etc."
          required
        />
      </div>

      <:actions>
        <.button
          :if={!@form.source.valid?}
          class="bg-gray-400 hover:bg-gray-400 cursor-not-allowed"
          disabled
          phx-disable-with="Sending..."
          phx-submit="save"
        >
          Waiting on form completion...
        </.button>
        <.button :if={@form.source.valid?} phx-disable-with="Sending..." phx-submit="save">
          Reach out
        </.button>
        <p class="text-sm text-gray-400">
          We will never share or sell your information.
        </p>
      </:actions>
    </.simple_form>
    """
  end
end
