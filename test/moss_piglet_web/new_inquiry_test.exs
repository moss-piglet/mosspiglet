defmodule MossPigletWeb.NewInquiryTest do
  use ExUnit.Case, async: true

  import Swoosh.TestAssertions

  alias MossPiglet.Accounts.ContactNotifier

  test "send email on form submit" do
    name = "ironman"
    email = "tony.stark@example.com"

    contact_params = %{
      "budget" => "50k-150k",
      "company" => "Stark Industries",
      "email" => "tony.stark@example.com",
      "extra_info" => "Need post-quantum encryption for all communications",
      "features" => "End-to-end encryption, real-time messaging",
      "goal" => "custom-encrypted-web-app",
      "name" => "Tony Stark",
      "referral" => "github",
      "timeline" => "3-6-months",
      "website" => "https://stark.example.com"
    }

    {:ok, email} = ContactNotifier.deliver_new_intake_form({name, email}, contact_params)
    assert_email_sent(email)
  end
end
