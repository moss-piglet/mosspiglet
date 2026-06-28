defmodule MossPigletWeb.HomeLive.Index do
  use MossPigletWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:page_title, "Privacy Software for the Post-Quantum Era")

    {:ok, socket, layout: {MossPigletWeb.Layouts, :landing}}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <.hero assigns={assigns} />

    <.trust_badges assigns={assigns} />

    <.products assigns={assigns} />

    <.custom_services assigns={assigns} />

    <.security_posture assigns={assigns} />

    <.who_we_are assigns={assigns} />

    <.government_enterprise assigns={assigns} />

    <.our_process assigns={assigns} />

    <.cta assigns={assigns} />

    <.footer assigns={assigns} />
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
                <div class="mt-16 sm:mt-32 lg:mt-16">
                  <a
                    href="https://github.com/moss-piglet/metamorphic-crypto"
                    target="_blank"
                    rel="noopener"
                    class="inline-flex flex-wrap items-center gap-3 sm:gap-6"
                  >
                    <span class="rounded-full bg-emerald-700/10 px-3 py-1 text-xs/6 sm:text-sm/6 font-semibold text-emerald-700 ring-1 ring-inset ring-emerald-700/10 animate-pulse">
                      What's new
                    </span>
                    <span class="inline-flex items-center gap-2 text-xs/6 sm:text-sm/6 font-medium text-gray-600 group">
                      <span class="group-hover:text-emerald-700">
                        Post-quantum encryption, open source
                      </span>
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
                <h1 class="mt-10 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-7xl">
                  Privacy software for the <span class="text-emerald-700">post-quantum</span> era.
                </h1>
                <p class="mt-8 text-pretty text-lg font-medium text-gray-500 sm:text-xl/8">
                  We build zero-knowledge encrypted software and open-source cryptographic libraries. Family-founded, fully bootstrapped, no tracking, no ads.
                </p>
                <div class="mt-10 flex flex-col sm:flex-row items-start sm:items-center gap-4">
                  <a
                    href="#products"
                    class="group rounded-lg bg-emerald-700 px-6 py-3.5 text-sm font-semibold text-white shadow-lg hover:bg-emerald-600 hover:shadow-emerald-500/25 transition-all duration-200"
                  >
                    Explore Our Products
                    <span class="inline-block ml-2 transition-transform group-hover:translate-x-1">
                      →
                    </span>
                  </a>
                  <a
                    href="https://github.com/moss-piglet"
                    target="_blank"
                    rel="noopener"
                    class="text-sm font-semibold text-gray-700 hover:text-emerald-700 flex items-center gap-2 transition-colors"
                  >
                    <.icon name="hero-code-bracket" class="w-5 h-5" /> View Our Open Source
                  </a>
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
                            hybrid.rs
                          </div>
                          <div class="border-r border-gray-600/10 px-4 py-2">secretbox.rs</div>
                        </div>
                      </div>
                      <div class="px-6 pb-14 pt-6" phx-no-curly-interpolation>
                        <pre id="code-example" class="text-white text-xs sm:text-sm -ml-24 sm:-ml-48">
                          <span class="text-gray-500 italic">// Hybrid post-quantum sealed box</span>
                          <span class="text-blue-300">let</span> kp = <span class="text-yellow-500">generate_hybrid_keypair</span>();

                          <span class="text-blue-300">let</span> sealed = <span class="text-yellow-500">hybrid_seal</span>(
                              <span class="text-emerald-300">"quantum-safe"</span>,
                              <span class="text-blue-300">&</span>kp.public_key,
                          )?;

                          <span class="text-blue-300">let</span> opened = <span class="text-yellow-500">hybrid_open</span>(
                              <span class="text-blue-300">&</span>sealed,
                              <span class="text-blue-300">&</span>kp.secret_key,
                          )?;

                          <span class="text-gray-500 italic">// XSalsa20-Poly1305 symmetric encryption</span>
                          <span class="text-blue-300">let</span> key = <span class="text-yellow-500">generate_key</span>();
                          <span class="text-blue-300">let</span> ct = <span class="text-yellow-500">encrypt_secretbox_string</span>(
                              <span class="text-emerald-300">"hello"</span>, <span class="text-blue-300">&</span>key
                          )?;

                          <span class="text-gray-500 italic">// #![forbid(unsafe_code)]</span>
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

  def trust_badges(assigns) do
    ~H"""
    <div class="bg-white py-12">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="flex flex-col items-center gap-8">
          <p class="text-sm font-medium text-gray-500 uppercase tracking-wider">
            Our technology stack
          </p>
          <div class="flex flex-wrap justify-center items-center gap-x-8 gap-y-4">
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Elixir
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Phoenix
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Phoenix LiveView
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Ecto
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              PostgreSQL
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              JavaScript
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Rust
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              WASM
            </span>
            <span class="rounded-full bg-emerald-50 px-4 py-1.5 text-sm font-semibold text-emerald-700 ring-1 ring-inset ring-emerald-600/20">
              Post-Quantum Encryption
            </span>
            <span class="rounded-full bg-emerald-50 px-4 py-1.5 text-sm font-semibold text-emerald-700 ring-1 ring-inset ring-emerald-600/20">
              Zero-Knowledge Architecture
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              Open Source
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              AGPL-3.0
            </span>
            <span class="rounded-full bg-gray-100 px-4 py-1.5 text-sm font-semibold text-gray-700">
              MIT / Apache-2.0
            </span>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def products(assigns) do
    ~H"""
    <div id="products" class="bg-gray-50 py-24 sm:py-32 scroll-mt-20">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">Our Products</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Privacy-first software for the post-quantum era
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            Zero-knowledge encrypted applications and open-source cryptographic libraries.
          </p>
        </div>

        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-none">
          <div class="grid max-w-xl grid-cols-1 gap-8 lg:max-w-none lg:grid-cols-2">
            <%!-- Metamorphic --%>
            <a
              href="https://metamorphic.app"
              target="_blank"
              rel="noopener"
              id="product-metamorphic"
              class="group relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg hover:ring-emerald-300 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-emerald-600">
                  <.icon name="hero-sparkles" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">Metamorphic</h3>
                  <span class="text-xs font-medium text-emerald-700">Free & paid tiers</span>
                </div>
              </div>
              <p class="mt-4 text-base/7 text-gray-600">
                Zero-knowledge encrypted habit tracker. Post-quantum encryption, progressive web app, streaks, goals, and journaling.
              </p>
              <span class="mt-6 inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 group-hover:gap-2 transition-all duration-200">
                Try Metamorphic <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
              </span>
            </a>

            <%!-- Mosslet --%>
            <a
              href="https://mosslet.com"
              target="_blank"
              rel="noopener"
              id="product-mosslet"
              class="group relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg hover:ring-emerald-300 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-emerald-600">
                  <.icon name="hero-chat-bubble-left-right" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">Mosslet</h3>
                  <span class="text-xs font-medium text-emerald-700">
                    Open source (AGPL-3.0)
                  </span>
                </div>
              </div>
              <p class="mt-4 text-base/7 text-gray-600">
                The world's first zero-knowledge post-quantum encrypted social network. Open source, Bluesky/ATProto sync.
              </p>
              <span class="mt-6 inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 group-hover:gap-2 transition-all duration-200">
                Try Mosslet <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
              </span>
            </a>

            <%!-- metamorphic-crypto (Rust) --%>
            <div
              id="product-metamorphic-crypto-rust"
              class="relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-gray-900">
                  <.icon name="hero-lock-closed" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">metamorphic-crypto</h3>
                  <span class="text-xs font-medium text-gray-500">
                    Dual MIT / Apache-2.0
                  </span>
                </div>
              </div>
              <p class="mt-4 flex-auto text-base/7 text-gray-600">
                Open-source Rust encryption library. Hybrid ML-KEM-768/1024 + X25519, XSalsa20-Poly1305, Argon2id. Compiles to WASM.
              </p>
              <div class="mt-6 flex flex-wrap items-center gap-4">
                <a
                  href="https://github.com/moss-piglet/metamorphic-crypto"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  GitHub <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://crates.io/crates/metamorphic-crypto"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  Crates.io <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://www.npmjs.com/package/@f0rest8/metamorphic-crypto"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  npm <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
              </div>
            </div>

            <%!-- metamorphic_crypto (Elixir) --%>
            <div
              id="product-metamorphic-crypto-elixir"
              class="relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-purple-700">
                  <.icon name="hero-cube" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">metamorphic_crypto</h3>
                  <span class="text-xs font-medium text-gray-500">Elixir NIF wrapper</span>
                </div>
              </div>
              <p class="mt-4 flex-auto text-base/7 text-gray-600">
                Precompiled Elixir NIF wrapper. No Rust toolchain required. Drop-in NaCl replacement with post-quantum support.
              </p>
              <div class="mt-6 flex flex-wrap items-center gap-4">
                <a
                  href="https://github.com/moss-piglet/metamorphic_crypto"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  GitHub <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://hex.pm/packages/metamorphic_crypto"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  Hex.pm <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
              </div>
            </div>

            <%!-- metamorphic-log (Rust) --%>
            <div
              id="product-metamorphic-log-rust"
              class="relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-gray-900">
                  <.icon name="hero-queue-list" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">metamorphic-log</h3>
                  <span class="text-xs font-medium text-gray-500">
                    Dual MIT / Apache-2.0
                  </span>
                </div>
              </div>
              <p class="mt-4 flex-auto text-base/7 text-gray-600">
                Open-source Rust transparency-log engine. RFC 6962 Merkle trees, tlog-tiles, hybrid post-quantum checkpoints, and CONIKS-style key transparency. Compiles to WASM.
              </p>
              <div class="mt-6 flex flex-wrap items-center gap-4">
                <a
                  href="https://github.com/moss-piglet/metamorphic-logcr"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  GitHub <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://crates.io/crates/metamorphic-log"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  Crates.io <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://www.npmjs.com/package/@f0rest8/metamorphic-log"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  npm <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
              </div>
            </div>

            <%!-- metamorphic_log (Elixir) --%>
            <div
              id="product-metamorphic-log-elixir"
              class="relative flex flex-col rounded-2xl bg-white p-8 shadow-sm ring-1 ring-gray-200 hover:shadow-lg transition-shadow duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="flex h-14 w-14 items-center justify-center rounded-xl bg-purple-700">
                  <.icon name="hero-rectangle-stack" class="h-7 w-7 text-white" />
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-gray-900">metamorphic_log</h3>
                  <span class="text-xs font-medium text-gray-500">Elixir NIF wrapper</span>
                </div>
              </div>
              <p class="mt-4 flex-auto text-base/7 text-gray-600">
                Precompiled Elixir NIF client for the metamorphic-log engine. No Rust toolchain required. Append, verify inclusion/consistency proofs, and validate checkpoints.
              </p>
              <div class="mt-6 flex flex-wrap items-center gap-4">
                <a
                  href="https://github.com/moss-piglet/metamorphic_log"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  GitHub <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
                <a
                  href="https://hex.pm/packages/metamorphic_log"
                  target="_blank"
                  rel="noopener"
                  class="inline-flex items-center gap-1 text-sm font-semibold text-emerald-700 hover:text-emerald-600 transition-colors"
                >
                  Hex.pm <.icon name="hero-arrow-top-right-on-square-mini" class="h-4 w-4" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def custom_services(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">Custom Development Services</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Secure software, built to spec
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            We build custom encrypted software for organizations that need it. Everything on this list is something we've shipped or have proven infrastructure to deliver.
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-3xl">
          <ul role="list" class="grid grid-cols-1 gap-4 sm:grid-cols-2">
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Custom encrypted web applications (Elixir/Phoenix, Rust)
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Native mobile applications (iOS/Android) with post-quantum encryption
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Elixir/Erlang package and library development (precompiled NIFs, Hex publishing)
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Rust library development (WASM, UniFFI, native targets)
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Privacy-first SaaS platform development
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Cryptographic integration and consulting
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Real-time systems and API development
              </span>
            </li>
            <li class="flex items-start gap-3 rounded-lg bg-gray-50 p-4">
              <.icon name="hero-check-circle" class="h-6 w-6 flex-none text-emerald-600 mt-0.5" />
              <span class="text-base text-gray-700">
                Post-quantum encryption implementation
              </span>
            </li>
          </ul>
        </div>
      </div>
    </div>
    """
  end

  def security_posture(assigns) do
    ~H"""
    <div class="bg-gray-900 py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl lg:text-center">
          <h2 class="text-base/7 font-semibold text-emerald-400">Security Posture</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-white sm:text-5xl lg:text-balance">
            Defense in depth, open by default
          </p>
          <p class="mt-6 text-lg/8 text-gray-300">
            Our security model is built on layers of encryption, open-source transparency, and zero data collection.
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-4xl">
          <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-10 lg:max-w-none lg:grid-cols-2 lg:gap-y-16">
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-white">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-lock-closed" class="size-6 text-white" />
                </div>
                Three-layer encryption
              </dt>
              <dd class="mt-2 text-base/7 text-gray-300">
                LUKS disk encryption, AES-256-GCM at rest, and zero-knowledge application-layer encryption. Your data is protected at every level.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-white">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-shield-check" class="size-6 text-white" />
                </div>
                Post-quantum key encapsulation
              </dt>
              <dd class="mt-2 text-base/7 text-gray-300">
                ML-KEM-768/1024 (FIPS 203) hybrid key encapsulation protects against both classical and quantum computing threats.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-white">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-code-bracket" class="size-6 text-white" />
                </div>
                Open source and auditable
              </dt>
              <dd class="mt-2 text-base/7 text-gray-300">
                All cryptographic code is open source.
                <code class="text-emerald-400">#![forbid(unsafe_code)]</code>
                — no unsafe Rust. Inspect every line.
              </dd>
            </div>
            <div class="relative pl-16">
              <dt class="text-base/7 font-semibold text-white">
                <div class="absolute left-0 top-0 flex size-10 items-center justify-center rounded-lg bg-emerald-600">
                  <.icon name="hero-eye-slash" class="size-6 text-white" />
                </div>
                Zero data collection
              </dt>
              <dd class="mt-2 text-base/7 text-gray-300">
                No tracking, no analytics data collection, no ads. Privacy analytics via Fathom — no cookies, no personal data.
              </dd>
            </div>
          </dl>
        </div>
      </div>
    </div>
    """
  end

  def who_we_are(assigns) do
    ~H"""
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-3xl text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">Who We Are</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Family-founded. Bootstrapped. Mission-driven.
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            Moss Piglet Corporation is a Delaware Public Benefit Corporation. Founded by Mark, Ryan, and John Thayer. No venture capital, no investors, no compromises on privacy.
          </p>
          <p class="mt-4 text-base/7 text-gray-500">
            Mark is the solo developer and CEO. Ryan is a veteran, co-founder, and advisor. John is a co-founder, advisor, and helped NASA build their first GIS systems.
          </p>
        </div>
      </div>
    </div>
    """
  end

  def government_enterprise(assigns) do
    ~H"""
    <div class="bg-gray-50 py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl lg:text-center">
          <h2 class="text-base/7 font-semibold text-emerald-700">Government & Enterprise</h2>
          <p class="mt-2 text-pretty text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-balance">
            Ready for government contracting
          </p>
          <p class="mt-6 text-lg/8 text-gray-600">
            We're registered, classified, and ready to support secure software needs at the federal level.
          </p>
        </div>
        <div class="mx-auto mt-16 max-w-3xl">
          <dl class="grid grid-cols-1 gap-6 sm:grid-cols-2">
            <div class="rounded-xl bg-white p-6 ring-1 ring-gray-200">
              <dt class="text-sm font-semibold text-gray-500">Registration</dt>
              <dd class="mt-2 text-base font-medium text-gray-900">
                SAM.gov registered (UEI on file)
              </dd>
            </div>
            <div class="rounded-xl bg-white p-6 ring-1 ring-gray-200">
              <dt class="text-sm font-semibold text-gray-500">Business size</dt>
              <dd class="mt-2 text-base font-medium text-gray-900">
                Small business (all NAICS categories)
              </dd>
            </div>
            <div class="rounded-xl bg-white p-6 ring-1 ring-gray-200 sm:col-span-2">
              <dt class="text-sm font-semibold text-gray-500">NAICS codes</dt>
              <dd class="mt-2 text-base font-medium text-gray-900">
                541511, 513210, 518210, 541512, 541519
              </dd>
            </div>
            <div class="rounded-xl bg-white p-6 ring-1 ring-gray-200">
              <dt class="text-sm font-semibold text-gray-500">Eligibility</dt>
              <dd class="mt-2 text-base font-medium text-gray-900">DoD-eligible</dd>
            </div>
            <div class="rounded-xl bg-white p-6 ring-1 ring-gray-200">
              <dt class="text-sm font-semibold text-gray-500">Standards</dt>
              <dd class="mt-2 text-base font-medium text-gray-900">
                Open-source cryptographic libraries built on NIST post-quantum standards (FIPS 203)
              </dd>
            </div>
          </dl>
        </div>
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
            Simple steps, clear communication
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
                  consultation
                </.link>
                to understand your requirements, security needs, and goals. We scope the work and plan the path forward together.
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
                We create architecture plans and specifications that map your requirements to implementation. You review and approve before we write code.
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
                We develop your project with fault-tolerant, privacy-first code. Regular check-ins keep you informed every step of the way.
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

  def cta(assigns) do
    ~H"""
    <div class="bg-emerald-700">
      <div class="mx-auto max-w-7xl px-6 py-24 sm:py-32 lg:flex lg:items-center lg:justify-between lg:px-8">
        <div>
          <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl">
            Ready to build something secure?
          </h2>
          <p class="mt-4 text-lg text-emerald-100">
            Let's discuss your project requirements.
          </p>
        </div>
        <div class="mt-10 flex items-center gap-x-6 lg:mt-0 lg:shrink-0">
          <.link
            navigate={~p"/new-inquiry"}
            class="rounded-lg bg-white px-6 py-3.5 text-sm font-semibold text-emerald-700 shadow-lg hover:bg-emerald-50 transition-colors duration-200"
          >
            Start a Conversation
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

  def footer(assigns) do
    ~H"""
    <footer class="bg-gray-900">
      <div class="mx-auto max-w-7xl px-6 py-16 sm:py-20 lg:px-8">
        <div class="xl:grid xl:grid-cols-3 xl:gap-8">
          <div class="space-y-8">
            <img src={~p"/images/logo.svg"} class="h-10 brightness-0 invert" alt="Moss Piglet" />
            <p class="text-sm/6 text-gray-400">
              Privacy software for the post-quantum era. Zero-knowledge encrypted software and open-source cryptographic libraries.
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
          <div class="mt-16 grid grid-cols-1 gap-8 sm:grid-cols-2 xl:col-span-2 xl:mt-0">
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-sm font-semibold text-white">Services</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li><span class="text-sm text-gray-400">Consulting</span></li>
                  <li><span class="text-sm text-gray-400">Custom Development</span></li>
                  <li><span class="text-sm text-gray-400">Cryptographic Integration</span></li>
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
                      href="https://github.com/moss-piglet"
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
                <h3 class="text-sm font-semibold text-white">Products</h3>
                <ul role="list" class="mt-6 space-y-4">
                  <li>
                    <a
                      href="https://metamorphic.app"
                      target="_blank"
                      rel="noopener"
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      Metamorphic
                    </a>
                  </li>
                  <li>
                    <a
                      href="https://mosslet.com"
                      target="_blank"
                      rel="noopener"
                      class="text-sm text-gray-400 hover:text-white transition-colors"
                    >
                      Mosslet
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
