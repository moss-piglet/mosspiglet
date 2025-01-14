defmodule MossPiglet.Accounts do
  @moduledoc false

  alias MossPiglet.Accounts.Contact

  def change_contact(%Contact{} = contact, attrs \\ %{}) do
    Contact.changeset(contact, attrs)
  end
end
