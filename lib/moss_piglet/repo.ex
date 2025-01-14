defmodule MossPiglet.Repo do
  use Ecto.Repo,
    otp_app: :moss_piglet,
    adapter: Ecto.Adapters.Postgres
end
