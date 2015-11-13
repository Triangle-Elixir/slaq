defmodule Slaq.UserController do
  use Slaq.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
