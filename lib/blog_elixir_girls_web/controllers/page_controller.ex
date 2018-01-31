defmodule BlogElixirGirlsWeb.PageController do
  use BlogElixirGirlsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
