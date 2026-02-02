defmodule MossPiglet.Accounts.Contact do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "contacts" do
    field :name, :string
    field :company, :string
    field :email, :string
    field :website, :string
    field :goal, :string
    field :features, :string
    field :audience, :string
    field :branding, :string
    field :admire, :string
    field :style, :string
    field :content, :string
    field :assistance, :string
    field :key_info, :string
    field :cms, :string
    field :integrations, :string
    field :hosting, :string
    field :budget, :string
    field :milestones, :string
    field :support, :boolean
    field :future_updates, :string
    field :extra_info, :string
    field :referral, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(incident, attrs) do
    incident
    |> cast(attrs, [
      :name,
      :company,
      :email,
      :website,
      :goal,
      :features,
      :audience,
      :branding,
      :admire,
      :style,
      :content,
      :assistance,
      :key_info,
      :cms,
      :integrations,
      :hosting,
      :budget,
      :milestones,
      :support,
      :future_updates,
      :extra_info,
      :referral
    ])
    |> validate_required([
      :name,
      :email,
      :goal,
      :budget
    ])
    |> validate_email()
  end

  defp validate_email(changeset) do
    changeset
    |> validate_required([:email])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, message: "must have the @ sign and no spaces")
    |> validate_length(:email, max: 160)
  end
end
