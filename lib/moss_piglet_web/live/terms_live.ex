defmodule MossPigletWeb.TermsLive do
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Terms of Service"),
     layout: {MossPigletWeb.Layouts, :landing}}
  end

  def render(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-3xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl">
          <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl">
            Terms of Service
          </h1>
          <p class="mt-6 text-lg text-gray-600">
            Last updated: January 2025
          </p>

          <div class="mt-12 prose prose-lg prose-emerald max-w-none">
            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Plain English Summary</h2>
              <p class="text-gray-600">
                We believe in being straightforward. Here's the deal: we build privacy-focused
                software and open-source cryptographic libraries, and we offer custom development
                and consulting services. We both agree to treat each other fairly and
                professionally. The rest of this document covers the details, but that's the
                essence of it.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Who We Are</h2>
              <p class="text-gray-600">
                Moss Piglet Corporation is a Delaware Public Benefit Corporation building
                privacy software for the post-quantum era. We ship zero-knowledge encrypted
                software, open-source cryptographic libraries, and privacy-first SaaS products.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Our Services</h2>
              <p class="text-gray-600 mb-4">
                We build custom encrypted software, open-source cryptographic libraries, and
                privacy-first applications. Our services include:
              </p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>Custom encrypted web and mobile applications</li>
                <li>Privacy-first SaaS products (including Metamorphic and Mosslet)</li>
                <li>Privacy-first software consulting</li>
                <li>Elixir/Erlang and Rust library development</li>
                <li>Post-quantum encryption implementation</li>
                <li>Ongoing maintenance and support</li>
              </ul>
              <p class="text-gray-600 mt-4">
                The specific details of what we'll build for you will be outlined in a separate
                agreement or statement of work.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Payment Terms</h2>
              <p class="text-gray-600 mb-4">
                We offer flexible engagement models tailored to your project:
              </p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>
                  <strong>Hourly</strong> — you pay for the time we spend on your project
                </li>
                <li>
                  <strong>Retainer</strong> — you prepay for a block of work with priority access
                </li>
                <li>
                  <strong>Fixed-price</strong> — we agree on a total price for a defined scope of work
                </li>
                <li>
                  <strong>Milestone-based</strong> — payments tied to agreed deliverables
                </li>
              </ul>
              <p class="text-gray-600 mt-4">
                Specific payment terms, schedules, and invoicing details will be outlined in each
                project's statement of work or contract.
              </p>
              <p class="text-gray-600 mt-4">
                If you have unused retainer funds when a project ends, we'll refund them or keep
                them on account for future work — your choice.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">What You Own</h2>
              <p class="text-gray-600 mb-4">
                Once you've paid for our work, you own the custom code we write for you —
                your business logic, custom solutions, and proprietary libraries built
                specifically for your project.
              </p>
              <p class="text-gray-600 mb-4">
                If your project uses our open-source libraries (such as <a
                  href="https://github.com/moss-piglet/metamorphic-crypto"
                  target="_blank"
                  rel="noopener"
                  class="text-emerald-700 hover:text-emerald-600 underline"
                  phx-no-format
                >
                  metamorphic-crypto</a> or <a
                  href="https://hex.pm/packages/metamorphic_crypto"
                  target="_blank"
                  rel="noopener"
                  class="text-emerald-700 hover:text-emerald-600 underline"
                  phx-no-format
                >metamorphic_crypto</a>), those remain open source under their existing licenses.
                Any proprietary libraries, tools, or frameworks we've developed independently
                remain our property, even if used in your project.
              </p>
              <p class="text-gray-600 mb-4">
                We may use general techniques and knowledge gained during your project on other
                work (that's how expertise grows), but your specific business data and custom
                solutions belong to you.
              </p>
              <p class="text-gray-600">
                Specific IP ownership details will be outlined in each project's statement of work.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">What We Need From You</h2>
              <p class="text-gray-600 mb-4">To do our best work, we need you to:</p>
              <ul class="list-disc pl-6 text-gray-600 space-y-2">
                <li>Provide timely feedback and approvals</li>
                <li>Share necessary content, assets, and information</li>
                <li>Be available for questions and check-ins</li>
                <li>Pay invoices on time or according to the agreed payment schedule</li>
                <li>Provide access to relevant systems and environments as needed</li>
                <li>Designate a point of contact for project communications</li>
              </ul>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Confidentiality</h2>
              <p class="text-gray-600">
                We'll keep your business information confidential. We won't share your trade
                secrets, proprietary data, or sensitive business details with anyone outside
                our team. Where government contracts require specific handling of Controlled
                Unclassified Information (CUI) or other protected data, we will comply with
                applicable regulations. We expect the same from you regarding our internal
                processes.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Warranties and Limitations</h2>
              <p class="text-gray-600">
                We promise to do quality work and fix any bugs we introduce. However, we can't
                guarantee that software will be 100% bug-free (no one can), or that it will work
                perfectly with every third-party service forever. We'll always do our best to
                make things right.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Ending Our Relationship</h2>
              <p class="text-gray-600">
                Either of us can end our working relationship with reasonable notice. If you end
                things, you'll pay for work completed. If we end things, we'll help transition
                your project to ensure you're not left stranded. Where a government contract
                specifies different termination terms, those terms apply.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Legal Stuff</h2>
              <p class="text-gray-600">
                These Terms and Conditions are governed by the laws of the State of Delaware.
                However, we acknowledge the applicability of laws in California and Massachusetts
                as relevant to our operations and user interactions.
              </p>
              <p class="text-gray-600 mt-4">
                If we ever have a dispute (hopefully we won't), let's try to work it out like
                reasonable people first. If that doesn't work, we'll handle it through
                arbitration rather than expensive litigation.
              </p>
              <p class="text-gray-600 mt-4">
                Where our services are provided under a government contract, the terms of that
                contract take precedence over these terms to the extent of any conflict.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Changes to These Terms</h2>
              <p class="text-gray-600">
                We may update these terms from time to time. If we make significant changes,
                we'll let you know. Continued use of our services after changes means you
                accept the new terms.
              </p>
            </section>

            <section class="mb-12">
              <h2 class="text-2xl font-bold text-gray-900 mb-4">Questions?</h2>
              <p class="text-gray-600">
                If anything here is unclear or you have questions, please reach out at <a
                  href="mailto:legal@mosspiglet.dev"
                  class="text-emerald-700 hover:text-emerald-600 underline"
                  phx-no-format
                >
                  legal@mosspiglet.dev</a>. We're happy to explain anything in even plainer English.
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
