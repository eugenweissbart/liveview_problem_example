defmodule LiveviewProblemExampleWeb.Router do
  use LiveviewProblemExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LiveviewProblemExampleWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveviewProblemExampleWeb do
    pipe_through :browser

    get "/", PageController, :home

    live_session :default do
      live "/page1", PagesLive.Page1, :index
      live "/page2", PagesLive.Page2, :index
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveviewProblemExampleWeb do
  #   pipe_through :api
  # end
end
