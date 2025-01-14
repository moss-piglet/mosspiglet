defmodule MossPigletWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use MossPigletWeb, :controller` and
  `use MossPigletWeb, :live_view`.
  """
  use MossPigletWeb, :html

  require Logger

  embed_templates "layouts/*"

  def app_name, do: MossPiglet.config(:app_name)

  def current_page_url(%{request_path: request_path}),
    do: MossPigletWeb.Endpoint.url() <> request_path

  def current_page_url(_conn), do: MossPigletWeb.Endpoint.url()

  def description(conn) do
    if conn.request_path == "/", do: MossPiglet.config(:seo_description)
  end

  def favicon_link_meta(assigns) do
    ~H"""
    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href={~p"/favicon/apple-touch-icon.png"} />
    <link rel="icon" type="image/png" sizes="32x32" href={~p"/favicon/favicon-32x32.png"} />
    <link rel="icon" type="image/png" sizes="16x16" href={~p"/favicon/favicon-16x16.png"} />
    <link rel="manifest" href={~p"/favicon/site.webmanifest"} />
    <link rel="mask-icon" href={~p"/favicon/safari-pinned-tab.svg"} color="#5bbad5" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    """
  end

  def og_image(%{assigns: %{og_image: og_image}}), do: og_image
  def og_image(_conn), do: url(~p"/images/open-graph.png")

  def og_image_width(%{assigns: %{og_image_width: og_image_width}}), do: og_image_width
  def og_image_width(_conn), do: "1200"

  def og_image_height(%{assigns: %{og_image_height: og_image_height}}), do: og_image_height
  def og_image_height(_conn), do: "630"

  def og_image_type(%{assigns: %{og_image_type: og_image_type}}), do: og_image_type
  def og_image_type(_conn), do: "image/png"

  def title(%{assigns: %{page_title: page_title}}), do: page_title
  def title(_conn), do: app_name()
end
