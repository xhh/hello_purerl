defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    message = :myDir_myMod@ps.message()
    render(conn, "index.html", message: message)
  end
end
