defmodule MossPigletWeb.NewInquiryTest do
  use ExUnit.Case, async: true

  import Swoosh.TestAssertions

  alias MossPiglet.Accounts.ContactNotifier

  test "send email on form submit" do
    name = "ironman"
    email = "tony.stark@example.com"

    contact_params = %{
      "admire" => "asdf",
      "assistance" => "asdf",
      "audience" => "asdf",
      "branding" => "asdf",
      "budget" => "asdf",
      "cms" => "asdf",
      "company" => "asdf",
      "content" => "asdf",
      "email" => "asdf@co.co",
      "extra_info" => "asdf",
      "features" => "asdf",
      "future_updates" => "asdf",
      "goal" => "asdf",
      "hosting" => "sdf",
      "integrations" => "asdfa",
      "key_info" => "asdf",
      "milestones" => "asdf",
      "name" => "asdf",
      "referral" => "asdf",
      "style" => "casual",
      "support" => "true",
      "timeline" => "asdf",
      "website" => "asdf"
    }

    {:ok, email} = ContactNotifier.deliver_new_intake_form({name, email}, contact_params)
    assert_email_sent(email)
  end
end
