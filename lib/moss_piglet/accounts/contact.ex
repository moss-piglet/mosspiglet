defmodule MossPiglet.Accounts.Contact do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  embedded_schema do
    field :name, :string
    field :email, :string
    field :company, :string
    field :website, :string
    field :goal, :string
    field :budget, :string
    field :timeline, :string
    field :features, :string
    field :extra_info, :string
    field :referral, :string
  end

  @cast_fields ~w(name email company website goal budget timeline features extra_info referral)a

  @valid_goals ~w(
    custom-encrypted-web-app mobile-app package-library-dev
    crypto-integration-consulting privacy-saas realtime-system-api
    pq-encryption-impl other
  )

  @valid_budgets ~w(under-10k 10k-50k 50k-150k 150k-500k 500k-1m 1m-plus need-scoping)

  @valid_timelines ~w(asap 1-3-months 3-6-months 6-12-months 12-plus-months flexible)

  @valid_referrals ~w(
    sam-gov github hex-pm linkedin bluesky
    elixir-forum dev-to referral search-engine other
  )

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, @cast_fields)
    |> validate_required([:name, :email, :goal, :budget])
    |> validate_email()
    |> validate_length(:name, max: 200)
    |> validate_length(:company, max: 200)
    |> validate_length(:website, max: 500)
    |> validate_length(:features, max: 5_000)
    |> validate_length(:extra_info, max: 5_000)
    |> validate_inclusion(:goal, @valid_goals)
    |> validate_inclusion(:budget, @valid_budgets)
    |> validate_inclusion(:timeline, @valid_timelines)
    |> validate_inclusion(:referral, @valid_referrals)
  end

  defp validate_email(changeset) do
    changeset
    |> validate_required([:email])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, message: "must have the @ sign and no spaces")
    |> validate_length(:email, max: 160)
  end
end
