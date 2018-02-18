defmodule BlogElixirGirlsWeb.Router do
  use BlogElixirGirlsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BlogElixirGirlsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/posts", PostController do
      post "/comment", PostController, :add_comment
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", BlogElixirGirlsWeb do
  #   pipe_through :api
  # end
end
