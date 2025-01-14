defmodule MossPigletWeb.PageControllerTest do
  use MossPigletWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "post-quantum"
  end
end
