defmodule EportalWeb.PageController do
  use EportalWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
