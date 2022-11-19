defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    message = :hello@ps.message()
    render(conn, "index.html", message: message)
  end
end
