defmodule MossPiglet.Accounts.ContactNotifier do
  @moduledoc false

  alias MossPigletWeb.Notifications.Email
  alias MossPiglet.Mailer

  def deliver_new_intake_form(email, form) do
    email
    |> Email.new_intake_email(form)
    |> deliver()
  end

  defp deliver(email) do
    with {:ok, _metadata} <- Mailer.deliver(email) do
      # Returning the email helps with testing
      {:ok, email}
    end
  end
end
