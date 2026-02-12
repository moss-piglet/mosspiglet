defmodule MossPigletWeb.HomeLive.Index do
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:page_title, "Oh, hey!")

    {:ok, socket, layout: {MossPigletWeb.Layouts, :landing}}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <.hero assigns={assigns} />

    <.trust_badges assigns={assigns} />

    <.services assigns={assigns} />

    <.our_process assigns={assigns} />

    <%!-- <.testimonials assigns={assigns} /> --%>

    <.pricing assigns={assigns} />

    <.faq assigns={assigns} />

    <.cta assigns={assigns} />

    <.footer assigns={assigns} />
    """
  end

  def trust_badges(assigns) do
    ~H"""
    <div class="bg-white py-12">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="flex flex-col items-center gap-8">
          <p class="text-sm font-medium text-gray-500 uppercase tracking-wider">
            Built with technologies trusted by industry leaders
          </p>
          <div class="flex flex-wrap justify-center items-center gap-x-12 gap-y-6">
            <div class="flex items-center gap-2 text-gray-600">
              <.icon name="hero-bolt" class="w-6 h-6" />
              <span class="font-semibold">Elixir</span>
            </div>
            <div class="flex items-center gap-2 text-gray-600">
              <.icon name="hero-fire" class="w-6 h-6" />
              <span class="font-semibold">Phoenix</span>
            </div>
            <div class="flex items-center gap-2 text-gray-600">
              <.icon name="hero-shield-check" class="w-6 h-6" />
              <span class="font-semibold">SOC2 Ready</span>
            </div>
            <div class="flex items-center gap-2 text-gray-600">
              <.icon name="hero-lock-closed" class="w-6 h-6" />
              <span class="font-semibold">HIPAA Ready</span>
            </div>
            <div class="flex items-center gap-2 text-gray-600">
              <.icon name="hero-globe-alt" class="w-6 h-6" />
              <span class="font-semibold">99.9% Uptime</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def services(assigns) do
    ~H"""
    <div class="bg-gray-50 py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">What We Build</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Everything you need to succeed online
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            From MVPs to enterprise applications, we deliver solutions that perform, scale, and delight users.
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-none">
          <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-3">
            <div class="flex flex-col bg-white rounded-2xl p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300">
              <dt class="flex items-center gap-x-3 text-lg font-semibold text-gray-900">
                <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-emerald-600">
                  <.icon name="hero-rocket-launch" class="h-6 w-6 text-white" />
                </div>
                Web Applications
              </dt>
              <dd class="mt-4 flex flex-auto flex-col text-base/7 text-gray-600">
                <p class="flex-auto">
                  Real-time, interactive applications that handle millions of concurrent users without breaking a sweat.
                </p>
                <ul class="mt-4 space-y-2 text-sm">
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> SaaS platforms
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" />
                    Dashboards & analytics
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> E-commerce systems
                  </li>
                </ul>
              </dd>
            </div>
            <div class="flex flex-col bg-white rounded-2xl p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300">
              <dt class="flex items-center gap-x-3 text-lg font-semibold text-gray-900">
                <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-emerald-600">
                  <.icon name="hero-device-phone-mobile" class="h-6 w-6 text-white" />
                </div>
                Marketing Sites
              </dt>
              <dd class="mt-4 flex flex-auto flex-col text-base/7 text-gray-600">
                <p class="flex-auto">
                  Beautiful, fast-loading websites that convert visitors into customers and rank well on search engines.
                </p>
                <ul class="mt-4 space-y-2 text-sm">
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> Landing pages
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> Company websites
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> Portfolio sites
                  </li>
                </ul>
              </dd>
            </div>
            <div class="flex flex-col bg-white rounded-2xl p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300">
              <dt class="flex items-center gap-x-3 text-lg font-semibold text-gray-900">
                <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-emerald-600">
                  <.icon name="hero-server-stack" class="h-6 w-6 text-white" />
                </div>
                APIs & Backends
              </dt>
              <dd class="mt-4 flex flex-auto flex-col text-base/7 text-gray-600">
                <p class="flex-auto">
                  Robust, scalable backend systems that power your applications with reliability and speed.
                </p>
                <ul class="mt-4 space-y-2 text-sm">
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> REST & GraphQL APIs
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> Real-time systems
                  </li>
                  <li class="flex items-center gap-2">
                    <.icon name="hero-check" class="w-4 h-4 text-emerald-500" /> Data pipelines
                  </li>
                </ul>
              </dd>
            </div>
          </dl>
        </div>
      </div>
    </div>
    """
  end

  def testimonials(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-xl text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">Testimonials</h2>
          <p class="mt-2 text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">
            Loved by founders and teams
          </p>
        </div>
        <div class="mx-auto mt-16 flow-root max-w-2xl sm:mt-20 lg:mx-0 lg:max-w-none">
          <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3">
            <div class="flex flex-col justify-between rounded-2xl bg-gray-50 p-8 ring-1 ring-gray-200">
              <div>
                <div class="flex gap-1 text-emerald-500">
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                </div>
                <p class="mt-4 text-lg/7 text-gray-600">
                  "They delivered our MVP in 6 weeks. The real-time features work flawlessly even with thousands of concurrent users. Couldn't be happier."
                </p>
              </div>
              <div class="mt-6 flex items-center gap-x-4">
                <div class="w-12 h-12 rounded-full bg-emerald-100 flex items-center justify-center text-emerald-700 font-bold">
                  JD
                </div>
                <div>
                  <p class="font-semibold text-gray-900">James Davidson</p>
                  <p class="text-sm text-gray-500">CEO, TechFlow</p>
                </div>
              </div>
            </div>
            <div class="flex flex-col justify-between rounded-2xl bg-gray-50 p-8 ring-1 ring-gray-200">
              <div>
                <div class="flex gap-1 text-emerald-500">
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                </div>
                <p class="mt-4 text-lg/7 text-gray-600">
                  "Professional, communicative, and technically excellent. They guided us through every decision and delivered beyond our expectations."
                </p>
              </div>
              <div class="mt-6 flex items-center gap-x-4">
                <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center text-blue-800 font-bold">
                  AK
                </div>
                <div>
                  <p class="font-semibold text-gray-900">Amanda Kim</p>
                  <p class="text-sm text-gray-500">Founder, DataPulse</p>
                </div>
              </div>
            </div>
            <div class="flex flex-col justify-between rounded-2xl bg-gray-50 p-8 ring-1 ring-gray-200 sm:col-span-2 lg:col-span-1">
              <div>
                <div class="flex gap-1 text-emerald-500">
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                  <.icon name="hero-star-solid" class="w-5 h-5" />
                </div>
                <p class="mt-4 text-lg/7 text-gray-600">
                  "Our site handles 10x the traffic it used to with zero downtime. The performance improvements alone paid for the entire project."
                </p>
              </div>
              <div class="mt-6 flex items-center gap-x-4">
                <div class="w-12 h-12 rounded-full bg-purple-100 flex items-center justify-center text-purple-600 font-bold">
                  MR
                </div>
                <div>
                  <p class="font-semibold text-gray-900">Michael Ross</p>
                  <p class="text-sm text-gray-500">CTO, ScaleUp</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def cta(assigns) do
    ~H"""
    <div class="bg-emerald-700">
      <div class="mx-auto max-w-7xl px-6 py-24 sm:py-32 lg:flex lg:items-center lg:justify-between lg:px-8">
        <div>
          <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl">
            Ready to build something amazing?
          </h2>
          <p class="mt-4 text-lg text-white">
            Start with a free consultation. No commitment, no pressure.
          </p>
        </div>
        <div class="mt-10 flex items-center gap-x-6 lg:mt-0 lg:shrink-0">
          <.link
            navigate={~p"/new-inquiry"}
            class="rounded-lg bg-white px-6 py-3.5 text-sm font-semibold text-emerald-700 shadow-lg hover:bg-emerald-50 transition-colors duration-200"
          >
            Get Started Today
          </.link>
          <.link
            href="mailto:hello@mosspiglet.dev"
            class="text-sm font-semibold text-white underline hover:text-emerald-100"
          >
            Contact us <span aria-hidden="true">→</span>
          </.link>
        </div>
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
                    <span class="rounded-full bg-emerald-700/10 px-3 py-1 text-xs/6 sm:text-sm/6 font-semibold text-emerald-700 ring-1 ring-inset ring-emerald-700/10 animate-pulse">
                      What's new
                    </span>
                    <span class="inline-flex items-center space-x-2 text-xs/6 sm:text-sm/6 font-medium text-gray-600 group">
                      <span class="group-hover:text-emerald-700">Shipped Mosslet v0.17 🚀</span>
                      <svg
                        class="size-5 text-gray-400 group-hover:text-emerald-700"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        aria-hidden="true"
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
                <h1 class="mt-10 text-pretty text-5xl font-bold tracking-tight text-gray-900 sm:text-7xl">
                  Build <span class="text-emerald-700">Faster</span>. Scale <span class="text-emerald-700">Smarter</span>.
                </h1>
                <p class="mt-8 text-pretty text-lg font-medium text-gray-500 sm:text-xl/8">
                  From idea to launch in weeks, not months. We build blazing-fast, secure web applications that grow with your business — powered by Elixir's battle-tested technology.
                </p>
                <div class="mt-10 flex flex-col sm:flex-row items-start sm:items-center gap-4">
                  <.link
                    navigate={~p"/new-inquiry"}
                    class="group rounded-lg bg-emerald-700 px-6 py-3.5 text-sm font-semibold text-white shadow-lg hover:bg-emerald-600 hover:shadow-emerald-500/25 transition-all duration-200"
                  >
                    Start Your Project
                    <span class="inline-block ml-2 transition-transform group-hover:translate-x-1">
                      →
                    </span>
                  </.link>
                  <span class="text-sm text-gray-500 flex items-center gap-2">
                    <.icon name="hero-check-circle" class="w-5 h-5 text-emerald-500" />
                    Free 30-min consultation
                  </span>
                </div>
                <%!-- Testimonials
                <div class="mt-12 flex items-center gap-x-6">
                  <div class="flex -space-x-2">
                    <div class="w-10 h-10 rounded-full bg-emerald-100 ring-2 ring-white flex items-center justify-center text-emerald-800 font-semibold text-sm">
                      JD
                    </div>
                    <div class="w-10 h-10 rounded-full bg-blue-100 ring-2 ring-white flex items-center justify-center text-blue-800 font-semibold text-sm">
                      AK
                    </div>
                    <div class="w-10 h-10 rounded-full bg-purple-100 ring-2 ring-white flex items-center justify-center text-purple-800 font-semibold text-sm">
                      MR
                    </div>
                  </div>
                  <div class="text-sm text-gray-600">
                    <span class="font-semibold text-gray-900">Trusted by founders</span>
                    building the next big thing
                  </div>
                </div>
                --%>
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
          <h2 class="text-base/7 font-semibold text-emerald-700">Our process</h2>
          <p class="mt-2 text-pretty text-4xl font-semibold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Simple steps, exceptional results
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            We keep things straightforward so you always know what's happening and what comes next.
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-4xl">
          <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-10 lg:max-w-none lg:grid-cols-2 lg:gap-y-16">
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-magnifying-glass" class="size-6 text-white" />
                </div>
                1. Discovery
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                We start with a
                <.link
                  navigate={~p"/new-inquiry"}
                  class="text-emerald-700 hover:text-emerald-600 font-medium"
                >
                  free consultation
                </.link>
                to understand your business, goals, and vision. We research your market and plan the path forward together.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-pencil-square" class="size-6 text-white" />
                </div>
                2. Design
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                We create wireframes, mockups, and content plans that bring your vision to life. You'll see and approve everything before we write a single line of code.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-code-bracket" class="size-6 text-white" />
                </div>
                3. Build
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                We develop your project with fault-tolerant, scalable code that's responsive and privacy-first. Regular check-ins keep you informed every step of the way.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-gray-900">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-rocket-launch" class="size-6 text-white" />
                </div>
                4. Launch & Support
              </dt>
              <dd class="mt-2 text-base/7 text-gray-600">
                We handle deployment, monitor for issues, and offer optional ongoing maintenance and support to keep everything running smoothly.
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
            Simple, transparent pricing
          </p>
        </div>
        <div class="relative mt-6">
          <p class="mx-auto max-w-2xl text-pretty text-lg font-medium text-gray-400 sm:text-xl/8">
            Choose the plan that fits your project. Both include our commitment to quality and clear communication.
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
              <div class="flex flex-col justify-between rounded-3xl bg-white p-8 shadow-xl ring-1 ring-gray-900/10 sm:p-10 hover:shadow-2xl transition-shadow duration-300">
                <div>
                  <h3 id="tier-hourly" class="text-base/7 font-semibold text-emerald-700">Hourly</h3>
                  <div class="mt-4 flex items-baseline gap-x-2">
                    <span class="text-5xl font-bold tracking-tight text-gray-900">$100</span>
                    <span class="text-base/7 font-semibold text-gray-600">/hour</span>
                  </div>
                  <p class="mt-6 text-base/7 text-gray-600">
                    Perfect for projects with evolving scope or shorter engagements.
                  </p>
                  <ul role="list" class="mt-10 space-y-4 text-sm/6 text-gray-600">
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-emerald-700" />
                      Pay-as-you-go flexibility
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-emerald-700" />
                      Detailed time tracking
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-emerald-700" />
                      Scale up or down anytime
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-emerald-700" />
                      Weekly progress reports
                    </li>
                  </ul>
                </div>
                <.link
                  navigate={~p"/new-inquiry"}
                  class="mt-8 block rounded-lg bg-white px-3.5 py-3 text-center text-sm/6 font-semibold text-emerald-700 ring-1 ring-emerald-700 hover:bg-emerald-50 transition-colors duration-200"
                >
                  Get Started
                </.link>
              </div>
              <div class="relative flex flex-col justify-between rounded-3xl bg-emerald-700 p-8 shadow-xl sm:p-10 hover:shadow-2xl transition-shadow duration-300">
                <div class="absolute -top-4 left-1/2 -translate-x-1/2">
                  <span class="inline-flex items-center rounded-full bg-emerald-100 px-4 py-1 text-xs font-semibold text-emerald-700 ring-1 ring-inset ring-emerald-600/20">
                    Most Popular
                  </span>
                </div>
                <div>
                  <h3 id="tier-retainer" class="text-base/7 font-semibold text-emerald-50">
                    Retainer
                  </h3>
                  <div class="mt-4 flex items-baseline gap-x-2">
                    <span class="text-5xl font-bold tracking-tight text-white">$5,000</span>
                    <span class="text-base/7 font-semibold text-emerald-50">/retainer</span>
                  </div>
                  <p class="mt-6 text-base/7 text-emerald-50">
                    Best value for serious projects. Priority access & comprehensive support included.
                  </p>
                  <ul role="list" class="mt-10 space-y-4 text-sm/6 text-emerald-50">
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-white" />
                      Everything in Hourly
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-white" />
                      <span class="text-white">
                        <strong class="text-white">Priority scheduling</strong>
                      </span>
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-white" />
                      <span class="text-white">
                        <strong class="text-white">Comprehensive support</strong> included
                      </span>
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-white" />
                      <span class="text-white">
                        <strong class="text-white">Training</strong> for your team
                      </span>
                    </li>
                    <li class="flex gap-x-3">
                      <.icon name="hero-check" class="h-6 w-5 flex-none text-white" />
                      Unused hours roll over
                    </li>
                  </ul>
                </div>
                <.link
                  navigate={~p"/new-inquiry"}
                  class="mt-8 block rounded-lg bg-white px-3.5 py-3 text-center text-sm/6 font-semibold text-emerald-700 shadow-lg hover:bg-emerald-50 transition-colors duration-200"
                >
                  Get Started →
                </.link>
              </div>

              <div class="flex flex-col items-start gap-x-8 gap-y-6 rounded-2xl bg-gray-50 p-8 sm:gap-y-10 sm:p-10 lg:col-span-2 lg:flex-row lg:items-center">
                <div class="lg:min-w-0 lg:flex-1">
                  <h3 class="text-lg font-semibold text-gray-900">
                    <.icon
                      name="hero-wrench-screwdriver"
                      class="w-5 h-5 inline-block mr-2 text-emerald-700"
                    /> Discounted Support
                  </h3>
                  <p class="mt-2 text-base/7 text-gray-600">
                    Hourly clients get discounted ongoing maintenance. Need more? Switch to retainer anytime for comprehensive coverage.
                  </p>
                </div>
                <div class="text-center">
                  <span class="text-2xl font-bold text-gray-900">$750</span>
                  <span class="text-gray-500">/month</span>
                </div>
              </div>
              <div class="flex flex-col items-start gap-x-8 gap-y-6 rounded-2xl bg-gray-50 p-8 sm:gap-y-10 sm:p-10 lg:col-span-2 lg:flex-row lg:items-center">
                <div class="lg:min-w-0 lg:flex-1">
                  <h3 class="text-lg font-semibold text-gray-900">
                    <.icon
                      name="hero-document-text"
                      class="w-5 h-5 inline-block mr-2 text-emerald-700"
                    /> One Bill Service
                  </h3>
                  <p class="mt-2 text-base/7 text-gray-600">
                    We handle all your website's vendor payments — hosting, domains, services. One invoice, zero hassle.
                  </p>
                </div>
                <div class="text-center">
                  <span class="text-2xl font-bold text-gray-900">$250</span>
                  <span class="text-gray-500">+ 5%</span>
                </div>
              </div>
            </div>
            <div class="mt-10 flex justify-center">
              <p class="text-sm text-gray-500 flex items-center gap-2">
                <.icon name="hero-shield-check" class="w-5 h-5 text-emerald-500" />
                100% satisfaction guarantee · No long-term contracts · Cancel anytime
              </p>
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
              href="mailto:support@mosspiglet.dev"
              class="font-semibold text-emerald-700 hover:text-emerald-600"
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
              question="Can I hire you just for training?"
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
    <footer class="bg-gray-900">
      <div class="mx-auto max-w-7xl px-6 py-16 sm:py-20 lg:px-8">
        <div class="xl:grid xl:grid-cols-3 xl:gap-8">
          <div class="space-y-8">
            <img src={~p"/images/logo.svg"} class="h-10 brightness-0 invert" alt="Moss Piglet" />
            <p class="text-sm/6 text-gray-400">
              Building fast, scalable web applications with Elixir and Phoenix. From idea to launch, we've got you covered.
            </p>
            <div class="flex gap-x-6">
              <a
                href="https://github.com/moss-piglet"
                target="_blank"
                rel="noopener"
                class="text-gray-400 hover:text-white transition-colors"
              >
                <span class="sr-only">GitHub</span>
                <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                  <path
                    fill-rule="evenodd"
                    d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                    clip-rule="evenodd"
                  />
                </svg>
              </a>
              <a
                href="mailto:hello@mosspiglet.dev"
                class="text-gray-400 hover:text-white transition-colors"
              >
                <span class="sr-only">Email</span>
                <svg
                  class="h-6 w-6"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke-width="1.5"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75"
                  />
                </svg>
              </a>
            </div>
          </div>
          <div class="mt-16 grid grid-cols-2 gap-8 xl:col-span-2 xl:mt-0">
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-sm font-semibold text-white">Services</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li><span class="text-sm text-gray-400">Web Applications</span></li>
                  <li><span class="text-sm text-gray-400">Marketing Sites</span></li>
                  <li><span class="text-sm text-gray-400">APIs & Backends</span></li>
                  <li><span class="text-sm text-gray-400">Consulting</span></li>
                </ul>
              </div>
              <div class="mt-10 md:mt-0">
                <h3 class="text-sm font-semibold text-white">Company</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li>
                    <.link
                      navigate={~p"/new-inquiry"}
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      Contact
                    </.link>
                  </li>
                  <li>
                    <a
                      href="https://github.com/moss-piglet/mosspiglet"
                      target="_blank"
                      rel="noopener"
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      GitHub
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-sm font-semibold text-white">Support</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li>
                    <a
                      href="mailto:support@mosspiglet.dev"
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      support@mosspiglet.dev
                    </a>
                  </li>
                </ul>
              </div>
              <div class="mt-10 md:mt-0">
                <h3 class="text-sm font-semibold text-white">Legal</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li>
                    <.link
                      navigate={~p"/privacy"}
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      Privacy Policy
                    </.link>
                  </li>
                  <li>
                    <.link
                      navigate={~p"/terms"}
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      Terms of Service
                    </.link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="mt-16 border-t border-gray-800 pt-8 sm:mt-20 lg:mt-24">
          <p class="text-xs text-gray-400 text-center">
            &copy; 2025 Moss Piglet, Corporation. A Public Benefit company. All rights reserved.
          </p>
        </div>
      </div>
    </footer>
    """
  end
end
