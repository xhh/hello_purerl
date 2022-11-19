defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # :main@ps.main().()
    render(conn, "index.html")
  end
end
