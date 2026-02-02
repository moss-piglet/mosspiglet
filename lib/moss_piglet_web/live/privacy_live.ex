defmodule MossPigletWeb.PrivacyLive do
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Privacy Policy"),
     layout: {MossPigletWeb.Layouts, :landing}}
  end

  def render(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-3xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl">
          <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl">
            Privacy Policy
          </h1>
          <p class="mt-6 text-lg text-gray-600">
            Last updated: January 2025
          </p>

          <div class="mt-12 prose prose-lg prose-emerald max-w-none">
            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">The Short Version</h2>
              <p class="text-gray-600">
                We respect your privacy. We don't sell your data. We don't share it with advertisers.
                We don't participate in surveillance capitalism. Period.
              </p>
              <p class="text-gray-600 mt-4">
                We only collect what we need to provide our services to you, and we protect that
                information like it's our own.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Who We Are</h2>
              <p class="text-gray-600">
                Moss Piglet Corporation is a public benefit corporation passionate about building
                ethical software solutions for people and the planet.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">What We Collect</h2>
              <p class="text-gray-600 mb-4">
                We only collect information that helps us serve you better:
              </p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>
                  <strong>Contact information</strong>
                  you provide (like your name and email) when you reach out to us
                </li>
                <li>
                  <strong>Project details</strong> you share when discussing potential work together
                </li>
              </ul>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">What We Don't Do</h2>
              <p class="text-gray-600 mb-4">Let's be crystal clear about what we will never do:</p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>
                  <strong>Sell your data</strong> — not to advertisers, data brokers, or anyone else
                </li>
                <li>
                  <strong>Track you across the web</strong> — we don't use invasive tracking cookies
                </li>
                <li>
                  <strong>Share your information</strong>
                  with third parties for their marketing purposes
                </li>
                <li>
                  <strong>Participate in surveillance capitalism</strong>
                  — your attention and data aren't products we sell
                </li>
                <li>
                  <strong>Use dark patterns</strong>
                  to trick you into giving up more information than necessary
                </li>
              </ul>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">How We Protect Your Data</h2>
              <p class="text-gray-600 mb-4">We take security seriously:</p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>All data is encrypted in transit and at rest</li>
                <li>We use infrastructure that meets SOC2 and HIPAA-ready standards</li>
                <li>We limit access to your information to only those who need it</li>
                <li>We regularly review and update our security practices</li>
              </ul>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Your Rights</h2>
              <p class="text-gray-600 mb-4">You have full control over your information:</p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>
                  <strong>Access</strong> — ask us what information we have about you
                </li>
                <li>
                  <strong>Correction</strong> — request that we fix any inaccurate information
                </li>
                <li>
                  <strong>Deletion</strong>
                  — ask us to delete your information (with some legal exceptions)
                </li>
                <li>
                  <strong>Portability</strong> — get a copy of your data in a usable format
                </li>
              </ul>
              <p class="text-gray-600 mt-4">
                Just email us at
                <a
                  href="mailto:privacy@mosspiglet.dev"
                  class="text-emerald-700 hover:text-emerald-600 underline"
                >
                  privacy@mosspiglet.dev
                </a>
                and we'll take care of it.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Third-Party Services</h2>
              <p class="text-gray-600">
                We use a minimal set of third-party services to run our business (like email and
                hosting). We choose partners who share our commitment to privacy and security.
                We never share more information with them than absolutely necessary.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Changes to This Policy</h2>
              <p class="text-gray-600">
                If we make significant changes to this policy, we'll let you know. We won't quietly
                slip in new ways to use your data. That's not how we operate.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Questions?</h2>
              <p class="text-gray-600">
                If you have any questions about this privacy policy or how we handle your data,
                please reach out to us at <a
                  href="mailto:privacy@mosspiglet.dev"
                  class="text-emerald-700 hover:text-emerald-600 underline"
                >
                  privacy@mosspiglet.dev
                </a>.
              </p>
            </section>
          </div>

          <div class="mt-12 pt-8 border-t border-gray-200">
            <.link navigate={~p"/"} class="text-emerald-700 hover:text-emerald-600 font-medium">
              ← Back to home
            </.link>
          </div>
        </div>
      </div>
    </div>

    <.footer assigns={assigns} />
    """
  end

  defdelegate footer(assigns), to: MossPigletWeb.HomeLive.Index
end
