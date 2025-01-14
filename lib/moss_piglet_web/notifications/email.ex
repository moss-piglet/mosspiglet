defmodule MossPigletWeb.Notifications.Email do
  @moduledoc false

  use Phoenix.Swoosh,
    view: MossPigletWeb.EmailView,
    layout: {MossPigletWeb.EmailView, :email_layout}

  def new_intake_email(email, form) do
    base_email()
    |> from(email)
    |> subject("New Client! Intake Form Submission")
    |> reply_to(email)
    |> render_body("new_client_intake.html", form)
    |> premail()
  end

  defp base_email(_opts \\ []) do
    new()
    |> to({to_name(), to_email()})
  end

  defp premail(email) do
    email
    |> html_body(email.html_body)
    |> text_body(email.html_body)
  end

  defp to_name do
    "Moss Piglet"
  end

  defp to_email do
    "hello@mosspiglet.dev"
  end
end
