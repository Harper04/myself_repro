defmodule MyselfReproWeb.PageController do
  use MyselfReproWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
