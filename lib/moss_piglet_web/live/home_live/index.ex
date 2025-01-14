defmodule MossPigletWeb.HomeLive.Index do
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: {MossPigletWeb.Layouts, :landing}}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <.hero assigns={assigns} />

    <.divider assgins={assigns} />

    <.our_process assigns={assigns} />

    <.pricing assigns={assigns} />

    <.divider assgins={assigns} />

    <.faq assigns={assigns} />

    <.footer assigns={assigns} />
    """
  end

  def divider(assigns) do
    ~H"""
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-gray-300"></div>
      </div>
      <div class="relative flex justify-center">
        <span class="bg-white px-2 text-sm text-gray-500">Continue</span>
      </div>
    </div>
    """
  end

  def hero(assigns) do
    ~H"""
    <div class="bg-white">
      <div class="relative isolate overflow-hidden bg-gradient-to-b from-emerald-100/20">
        <div class="mx-auto max-w-7xl pb-24 pt-10 sm:pb-32 lg:grid lg:grid-cols-2 lg:gap-x-8 lg:px-8 lg:py-40">
          <div class="px-6 lg:px-0 lg:pt-4">
            <div class="mx-auto max-w-2xl">
              <div class="max-w-lg">
                <div class="mt-24 sm:mt-32 lg:mt-16">
                  <a
                    href="https://mosslet.com"
                    target="_blank"
                    rel="noopener"
                    class="inline-flex space-x-6"
                  >
                    <span class="rounded-full bg-emerald-600/10 px-3 py-1 text-sm/6 font-semibold text-emerald-600 ring-1 ring-inset ring-emerald-600/10">
                      What's new
                    </span>
                    <span class="inline-flex items-center space-x-2 text-sm/6 font-medium text-gray-600">
                      <span>Just shipped Mosslet v0.8</span>
                      <svg
                        class="size-5 text-gray-400"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M8.22 5.22a.75.75 0 0 1 1.06 0l4.25 4.25a.75.75 0 0 1 0 1.06l-4.25 4.25a.75.75 0 0 1-1.06-1.06L11.94 10 8.22 6.28a.75.75 0 0 1 0-1.06Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </span>
                  </a>
                </div>
                <h1 class="mt-10 text-pretty text-5xl font-semibold tracking-tight text-gray-900 sm:text-7xl">
                  Supercharge your web<span class="italic">ness</span>
                </h1>
                <p class="mt-8 text-pretty text-lg font-medium text-gray-500 sm:text-xl/8">
                  Whether you have an existing website or just an idea, we offer custom solutions tailored to your needs. From simple websites to complex web apps with end-to-end encryption, we can build it for you.
                </p>
                <div class="mt-10 flex items-center gap-x-6">
                  <.link
                    navigate={~p"/new-inquiry"}
                    class="rounded-md bg-emerald-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-emerald-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600"
                  >
                    New Inquiry
                  </.link>
                  <%!-- TODO: Public Git Repo
                  <.link navigate={~p"/new-inquiry"} class="text-sm/6 font-semibold text-gray-900">
                    View on GitHub <span aria-hidden="true">→</span>
                  </.link>
                  --%>
                </div>
              </div>
            </div>
          </div>
          <div class="mt-20 sm:mt-24 md:mx-auto md:max-w-2xl lg:mx-0 lg:mt-0 lg:w-screen">
            <div
              class="absolute inset-y-0 right-1/2 -z-10 -mr-10 w-[200%] skew-x-[-30deg] bg-white shadow-xl shadow-emerald-600/10 ring-1 ring-emerald-50 md:-mr-20 lg:-mr-36"
              aria-hidden="true"
            >
            </div>
            <div class="shadow-lg md:rounded-3xl">
              <div class="bg-emerald-500 [clip-path:inset(0)] md:[clip-path:inset(0_round_theme(borderRadius.3xl))]">
                <div
                  class="absolute -inset-y-px left-1/2 -z-10 ml-10 w-[200%] skew-x-[-30deg] bg-emerald-100 opacity-20 ring-1 ring-inset ring-white md:ml-20 lg:ml-36"
                  aria-hidden="true"
                >
                </div>
                <div class="relative px-6 pt-8 sm:pt-16 md:pl-16 md:pr-0">
                  <div class="mx-auto max-w-2xl md:mx-0 md:max-w-none">
                    <div class="w-screen overflow-hidden rounded-tl-xl bg-gray-900">
                      <div class="flex bg-gray-800/40 ring-1 ring-white/5">
                        <div class="-mb-px flex text-sm/6 font-medium text-gray-400">
                          <div class="border-b border-r border-b-white/20 border-r-white/10 bg-white/5 px-4 py-2 text-white">
                            IncidentLive.Index.ex
                          </div>
                          <div class="border-r border-gray-600/10 px-4 py-2">ElixerApp.ex</div>
                        </div>
                      </div>
                      <div class="px-6 pb-14 pt-6">
                        <%!-- Your code example --%>
                        <pre id="code-example" class="text-white -ml-48">
                          <span class="text-gray-500 italic">...</span>

                          incident <span class="text-blue-300">=</span> <span class="text-yellow-500">Incidents</span>.<span class="text-brand-500">get_incident!(</span>id<span class="text-brand-500">)</span>

                          socket <span class="text-blue-300">=</span>
                            socket
                            <span class="text-blue-300">|></span> <span class="text-brand-500">assign(</span><span class="text-blue-300">:incident,</span> incident<span class="text-brand-500">)</span>
                            <span class="text-blue-300">|></span> <span class="text-brand-500">assign_async(</span><span class="text-blue-300">:urgent_incidents,</span> <span class="text-yellow-500 italic">fn</span> <span class="text-brand-500">-></span>
                              <span class="text-purple-400"><%= "{" %></span><span class="text-blue-300"><%= ":ok," %></span> <span class="text-brand-500"><%= "%{" %></span><span class="text-blue-300"><%= "urgent_incidents:" %></span> <span class="text-yellow-500">Incidents</span>.<span class="text-brand-500">urgent_incidents(</span>incident<span class="text-brand-500">)}</span><span class="text-brand-500"><%= "}" %></span>
                            <span class="text-yellow-500">end</span><span class="text-blue-300">)</span>

                          <span class="text-gray-500 italic">...</span>
                        </pre>
                      </div>
                    </div>
                  </div>
                  <div
                    class="pointer-events-none absolute inset-0 ring-1 ring-inset ring-black/10 md:rounded-3xl"
                    aria-hidden="true"
                  >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="absolute inset-x-0 bottom-0 -z-10 h-24 bg-gradient-to-t from-white sm:h-32"></div>
      </div>
    </div>
    """
  end

  def our_process(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl lg:text-center">
          <h2 class="text-base/7 font-semibold text-emerald-600">Our process</h2>
          <p class="mt-2 text-pretty text-4xl font-semibold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            We guide you every step of the way
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            Building a website can feel daunting and opaque. That's why we guide you through every step so that you are always in the "know".
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-4xl">
          <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-10 lg:max-w-none lg:grid-cols-2 lg:gap-y-16">
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="m11.25 11.25.041-.02a.75.75 0 0 1 1.063.852l-.708 2.836a.75.75 0 0 0 1.063.853l.041-.021M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Zm-9-3.75h.008v.008H12V8.25Z"
                    />
                  </svg>
                </div>
                Consultation
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                This is the first stage of the process and includes a free 30 minute consultation that follows up your <.link
                  navigate={~p"/new-inquiry"}
                  class="text-brand-600 hover:text-brand-500 font-medium"
                >new client inquiry</.link>.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M4.26 10.147a60.438 60.438 0 0 0-.491 6.347A48.62 48.62 0 0 1 12 20.904a48.62 48.62 0 0 1 8.232-4.41 60.46 60.46 0 0 0-.491-6.347m-15.482 0a50.636 50.636 0 0 0-2.658-.813A59.906 59.906 0 0 1 12 3.493a59.903 59.903 0 0 1 10.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.717 50.717 0 0 1 12 13.489a50.702 50.702 0 0 1 7.74-3.342M6.75 15a.75.75 0 1 0 0-1.5.75.75 0 0 0 0 1.5Zm0 0v-3.675A55.378 55.378 0 0 1 12 8.443m-7.007 11.55A5.981 5.981 0 0 0 6.75 15.75v-1.5"
                    />
                  </svg>
                </div>
                Research and Planning
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Market research and competitor analysis, structural definition, sitemap, customer flow, and layout of the project timeline and milestones.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3.75 6A2.25 2.25 0 0 1 6 3.75h2.25A2.25 2.25 0 0 1 10.5 6v2.25a2.25 2.25 0 0 1-2.25 2.25H6a2.25 2.25 0 0 1-2.25-2.25V6ZM3.75 15.75A2.25 2.25 0 0 1 6 13.5h2.25a2.25 2.25 0 0 1 2.25 2.25V18a2.25 2.25 0 0 1-2.25 2.25H6A2.25 2.25 0 0 1 3.75 18v-2.25ZM13.5 6a2.25 2.25 0 0 1 2.25-2.25H18A2.25 2.25 0 0 1 20.25 6v2.25A2.25 2.25 0 0 1 18 10.5h-2.25a2.25 2.25 0 0 1-2.25-2.25V6ZM13.5 15.75a2.25 2.25 0 0 1 2.25-2.25H18a2.25 2.25 0 0 1 2.25 2.25V18A2.25 2.25 0 0 1 18 20.25h-2.25A2.25 2.25 0 0 1 13.5 18v-2.25Z"
                    />
                  </svg>
                </div>
                Pre-production
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Wireframing, UX design, mockups, and content creation. Depending on the project's needs, this stage can vary significantly in time.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="m6.75 7.5 3 2.25-3 2.25m4.5 0h3m-9 8.25h13.5A2.25 2.25 0 0 0 21 18V6a2.25 2.25 0 0 0-2.25-2.25H5.25A2.25 2.25 0 0 0 3 6v12a2.25 2.25 0 0 0 2.25 2.25Z"
                    />
                  </svg>
                </div>
                Production
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Coding and testing of the project. We specialize in fault-tolerant, distributable, and scalable code that is responsive and privacy-first.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3.75 3v11.25A2.25 2.25 0 0 0 6 16.5h2.25M3.75 3h-1.5m1.5 0h16.5m0 0h1.5m-1.5 0v11.25A2.25 2.25 0 0 1 18 16.5h-2.25m-7.5 0h7.5m-7.5 0-1 3m8.5-3 1 3m0 0 .5 1.5m-.5-1.5h-9.5m0 0-.5 1.5M9 11.25v1.5M12 9v3.75m3-6v6"
                    />
                  </svg>
                </div>
                Client Review
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Presentation of the finished project for final review. Any necessary adjustments and testing can be implemented.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15.59 14.37a6 6 0 0 1-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 0 0 6.16-12.12A14.98 14.98 0 0 0 9.631 8.41m5.96 5.96a14.926 14.926 0 0 1-5.841 2.58m-.119-8.54a6 6 0 0 0-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 0 0-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 0 1-2.448-2.448 14.9 14.9 0 0 1 .06-.312m-2.24 2.39a4.493 4.493 0 0 0-1.757 4.306 4.493 4.493 0 0 0 4.306-1.758M16.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Z"
                    />
                  </svg>
                </div>
                Launch
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Project is launched and monitored for any immediate issues, encompassing any necessary hosting configuration.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M16.712 4.33a9.027 9.027 0 0 1 1.652 1.306c.51.51.944 1.064 1.306 1.652M16.712 4.33l-3.448 4.138m3.448-4.138a9.014 9.014 0 0 0-9.424 0M19.67 7.288l-4.138 3.448m4.138-3.448a9.014 9.014 0 0 1 0 9.424m-4.138-5.976a3.736 3.736 0 0 0-.88-1.388 3.737 3.737 0 0 0-1.388-.88m2.268 2.268a3.765 3.765 0 0 1 0 2.528m-2.268-4.796a3.765 3.765 0 0 0-2.528 0m4.796 4.796c-.181.506-.475.982-.88 1.388a3.736 3.736 0 0 1-1.388.88m2.268-2.268 4.138 3.448m0 0a9.027 9.027 0 0 1-1.306 1.652c-.51.51-1.064.944-1.652 1.306m0 0-3.448-4.138m3.448 4.138a9.014 9.014 0 0 1-9.424 0m5.976-4.138a3.765 3.765 0 0 1-2.528 0m0 0a3.736 3.736 0 0 1-1.388-.88 3.737 3.737 0 0 1-.88-1.388m2.268 2.268L7.288 19.67m0 0a9.024 9.024 0 0 1-1.652-1.306 9.027 9.027 0 0 1-1.306-1.652m0 0 4.138-3.448M4.33 16.712a9.014 9.014 0 0 1 0-9.424m4.138 5.976a3.765 3.765 0 0 1 0-2.528m0 0c.181-.506.475-.982.88-1.388a3.736 3.736 0 0 1 1.388-.88m-2.268 2.268L4.33 7.288m6.406 1.18L7.288 4.33m0 0a9.024 9.024 0 0 0-1.652 1.306A9.025 9.025 0 0 0 4.33 7.288"
                    />
                  </svg>
                </div>
                Ongoing Support (optional)
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Provide ongoing support and maintenace, including updates, troubleshooting, and optional training for future employees.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="size-6 text-white"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z"
                    />
                  </svg>
                </div>
                Evaluation and Feedback
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                Gather and share feedback from customers and client on the project's performance and recommend future enhancements.
              </dd>
            </div>
          </dl>
        </div>
      </div>
    </div>
    """
  end

  def pricing(assigns) do
    ~H"""
    <div class="isolate overflow-hidden bg-gray-900">
      <div class="mx-auto max-w-7xl px-6 pb-96 pt-24 text-center sm:pt-32 lg:px-8">
        <div class="mx-auto max-w-4xl">
          <h2 class="text-base/7 font-semibold text-emerald-400">Pricing</h2>
          <p class="mt-2 text-balance text-5xl font-semibold tracking-tight text-white sm:text-6xl">
            Choose the right price for you
          </p>
        </div>
        <div class="relative mt-6">
          <p class="mx-auto max-w-2xl text-pretty text-lg font-medium text-gray-400 sm:text-xl/8">
            Choose to pay hourly or by retainer, whichever makes the most sense for your budget and project. Comprehensive invoicing is standard.
          </p>
          <svg
            viewBox="0 0 1208 1024"
            class="absolute -top-10 left-1/2 -z-10 h-[64rem] -translate-x-1/2 [mask-image:radial-gradient(closest-side,white,transparent)] sm:-top-12 md:-top-20 lg:-top-12 xl:top-0"
          >
            <ellipse
              cx="604"
              cy="512"
              fill="url(#6d1bd035-0dd1-437e-93fa-59d316231eb0)"
              rx="604"
              ry="512"
            />
            <defs>
              <radialGradient id="6d1bd035-0dd1-437e-93fa-59d316231eb0">
                <stop stop-color="#6ee7b7" />
                <stop offset="1" stop-color="#10b981" />
              </radialGradient>
            </defs>
          </svg>
        </div>
      </div>
      <div class="flow-root bg-white pb-24 sm:pb-32">
        <div class="-mt-80">
          <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="mx-auto grid max-w-md grid-cols-1 gap-8 lg:max-w-4xl lg:grid-cols-2">
              <div class="flex flex-col justify-between rounded-3xl bg-white p-8 shadow-xl ring-1 ring-gray-900/10 sm:p-10">
                <div>
                  <h3 id="tier-hobby" class="text-base/7 font-semibold text-emerald-600">Time</h3>
                  <div class="mt-4 flex items-baseline gap-x-2">
                    <span class="text-5xl font-semibold tracking-tight text-gray-900">$100</span>
                    <span class="text-base/7 font-semibold text-gray-600">/hr</span>
                  </div>
                  <p class="mt-6 text-base/7 text-gray-600">
                    Pay by the hour for flexible project scopes and evolving requirements.
                  </p>
                  <ul role="list" class="mt-10 space-y-4 text-sm/6 text-gray-600">
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Pay-as-you-go flexibility
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Clear accountability
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Best for short-term projects
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Adjustable workload
                    </li>
                  </ul>
                </div>
                <.link
                  navigate={~p"/new-inquiry"}
                  aria-describedby="tier-retainer"
                  class="mt-8 block rounded-md bg-emerald-600 px-3.5 py-2 text-center text-sm/6 font-semibold text-white shadow-sm hover:bg-emerald-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600"
                >
                  Inquire today
                </.link>
              </div>
              <div class="flex flex-col justify-between rounded-3xl bg-white p-8 shadow-xl ring-1 ring-gray-900/10 sm:p-10">
                <div>
                  <h3 id="tier-team" class="text-base/7 font-semibold text-emerald-600">Retainer</h3>
                  <div class="mt-4 flex items-baseline gap-x-2">
                    <span class="text-5xl font-semibold tracking-tight text-gray-900">$5,000</span>
                    <span class="text-base/7 font-semibold text-gray-600">/rt</span>
                  </div>
                  <p class="mt-6 text-base/7 text-gray-600">
                    Hire us on retainer, billed at our hourly rate, to facilitate the specific needs of your project.
                  </p>
                  <ul role="list" class="mt-10 space-y-4 text-sm/6 text-gray-600">
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Predictable budgeting
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Priority access
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Long-term relationship
                    </li>
                    <li class="flex gap-x-3">
                      <svg
                        class="h-6 w-5 flex-none text-emerald-600"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
                        data-slot="icon"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      Comprehensive support
                    </li>
                  </ul>
                </div>
                <.link
                  navigate={~p"/new-inquiry"}
                  aria-describedby="tier-retainer"
                  class="mt-8 block rounded-md bg-emerald-600 px-3.5 py-2 text-center text-sm/6 font-semibold text-white shadow-sm hover:bg-emerald-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600"
                >
                  Inquire today
                </.link>
              </div>

              <div class="flex flex-col items-start gap-x-8 gap-y-6 rounded-3xl p-8 ring-1 ring-gray-900/10 sm:gap-y-10 sm:p-10 lg:col-span-2 lg:flex-row lg:items-center">
                <div class="lg:min-w-0 lg:flex-1">
                  <h3 class="text-base/7 font-semibold text-emerald-600">Discounted Support</h3>
                  <p class="mt-1 text-base/7 text-gray-600">
                    We offer hourly clients a discount on ongoing maintenance and support. For comprehensive support coverage and training, clients can switch to paying by retainer.
                  </p>
                </div>
                <span class="rounded-md px-3.5 py-2 text-sm/6 font-semibold text-emerald-600 ring-1 ring-inset ring-emerald-200 hover:ring-emerald-300 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600">
                  $750 /mo
                </span>
              </div>
              <div class="flex flex-col items-start gap-x-8 gap-y-6 rounded-3xl p-8 ring-1 ring-gray-900/10 sm:gap-y-10 sm:p-10 lg:col-span-2 lg:flex-row lg:items-center">
                <div class="lg:min-w-0 lg:flex-1">
                  <h3 class="text-base/7 font-semibold text-emerald-600">One Bill Service</h3>

                  <p class="mt-1 text-base/7 text-gray-600">
                    We can handle the payments for all the services required to operate your website so you can stay focused on running your business.
                  </p>
                </div>
                <span class="rounded-md px-3.5 py-2 text-sm/6 font-semibold text-emerald-600 ring-1 ring-inset ring-emerald-200 hover:ring-emerald-300 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-emerald-600">
                  $250 + 5%
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def faq(assigns) do
    ~H"""
    <div class="bg-white">
      <div class="mx-auto max-w-7xl px-6 py-16 sm:py-24 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
          <h2 class="text-4xl font-semibold tracking-tight text-gray-900 sm:text-5xl">
            Frequently asked questions
          </h2>
          <p class="mt-6 text-base/7 text-gray-600">
            Have a different question and can’t find the answer you’re looking for? Reach out to our support team by
            <.link
              href="mailto:hello@mosspiglet.dev"
              class="font-semibold text-emerald-600 hover:text-emerald-500"
            >
              sending us an email
            </.link>
            and we’ll get back to you as soon as we can.
          </p>
        </div>
        <div class="mt-20">
          <dl class="space-y-16 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-16 sm:space-y-0 lg:gap-x-10">
            <.faq_question
              question="What's the difference between a website and a web app?"
              answer="A website is primarily informational while a web app is more interactive. Website examples include portfolios, news sites, and company homepages. Examples of web apps include social media platforms, productivity tools, and online booking systems."
            />
            <.faq_question
              question="What's the difference between a web and mobile app?"
              answer="A web app is universally available through a browser on any device. A mobile app is specific to a particular mobile device and available through that device's app store (e.g. Apple App Store or Google Play). Both typically share the same backend system to support their features and functionality."
            />
            <.faq_question
              question="Why have a web app and not a mobile app?"
              answer="Mobile app design typically involves a different technology stack than the backend system and/or web app. This means that different teams are required to build the mobile and backend systems for a service — dramatically increasing the cost. Whereas web apps can be designed using the same technology and team building the backend system."
            />
            <.faq_question
              question="If I want a mobile app, what are my options?"
              answer="We could (1) build you the backend system, web app, and mobile app; (2) build you the backend system, web app, and faciliate the mobile app design for you; (3) build you the backend system, web app, and hand it over to you for the mobile app; or (4) build you the backend system and hand it over to you for the rest."
            />
            <.faq_question
              question="Will I get the same quality of work whether paying hourly or by retainer?"
              answer="Yes, you can expect the same high quality work from us regardless of your payment type."
            />
            <.faq_question
              question="Can I switch between payment options?"
              answer="Yes, you can switch between hourly and retainer at any time. If switching to hourly, any unused amount on your retainer will be refunded to you."
            />
            <.faq_question
              question="The project is over but I still have money left on my retainer?"
              answer="If your project is over and you have an unused amount left on your retainer, then you can opt to have that unused amount refunded to you or keep it on retainer with us so that we can continue to provide you with our comprehensive support."
            />
            <%!-- More questions... --%>
            <.faq_question
              question="What does discounted support include?"
              answer="Our discounted support, available as a monthly fee when paying hourly, is a more flexible approach for clients with evolving project needs and covers maintenance and updates to the site."
            />
            <.faq_question
              question="What does comprehensive support include?"
              answer="Our comprehensive support, only available when paying by retainer, is a holistic approach and covers a range of services from maintenance, updates, and new feature development to training."
            />
            <.faq_question
              question="Is support required?"
              answer="No. While comprehensive support is included when paying by retainer, our services for ongoing support are optional."
            />

            <.faq_question
              question="What is your One Bill service?"
              answer="Our One Bill service is white-glove for the administration of the costs of your website. A website typically has multiple vendors that each provide a specific service required for it to work. Rather than keeping track of who and how much to pay, you simply pay us and we handle the rest and use our expertise to increase the cost-performance value of your website."
            />
            <.faq_question
              question="How does One Bill service work?"
              answer="Each month you will get a detailed breakdown of the expected costs and services required to run your website. We will charge you a monthly management fee plus a percent of the total costs of the services for that month. You can opt to receive individual receipts each month for each vendor we pay on your behalf or simply upon request."
            />
            <.faq_question
              question="I'm paying hourly, can I still have One Bill service?"
              answer="Yes, our One Bill service is an optional add-on service available to all of our clients regardless of payment type."
            />
            <.faq_question
              question="Will you support our privacy and security needs?"
              answer="Yes, we take privacy and security seriously. From end-to-end encryption to infrastructure that is SOC2 attested, HIPAA-ready, with regulary third-party audits, we've got your security and privacy needs covered."
            />
            <.faq_question
              question="What kind of training do you provide?"
              answer="Included when paying by retainer, we can provide training based on your needs: from maintenance and updates to full-stack software development with the Elixir programming language."
            />
            <.faq_question
              question="Can I hire you just for taining?"
              answer="Yes, you can hire us on retainer for training."
            />
          </dl>
        </div>
      </div>
    </div>
    """
  end

  attr :question, :string, required: true
  attr :answer, :string, required: true

  def faq_question(assigns) do
    ~H"""
    <div>
      <dt class="text-base/7 font-semibold text-gray-900">
        {@question}
      </dt>
      <dd class="mt-2 text-base/7 text-gray-600">
        {@answer}
      </dd>
    </div>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer class="bg-white">
      <div class="mx-auto max-w-7xl overflow-hidden px-6 py-20 sm:py-24 lg:px-8">
        <nav
          class="-mb-6 flex flex-wrap justify-center gap-x-12 gap-y-3 text-sm/6"
          aria-label="Footer"
        >
        </nav>
        <div class="mt-16 flex justify-center gap-x-10">
          <span class="sr-only">Moss Piglet</span>
          <img src={~p"/images/logo.svg"} class="h-12" />
        </div>
        <p class="mt-10 text-center text-sm/6 text-gray-600">
          &copy; 2025 Moss Piglet, Corporation. A Public Benefit company. All rights reserved.
        </p>
      </div>
    </footer>
    """
  end
end
