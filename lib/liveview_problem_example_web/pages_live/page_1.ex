defmodule LiveviewProblemExampleWeb.PagesLive.Page1 do
  use LiveviewProblemExampleWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <h1 class="liveview-cont">Page 1</h1>
    """
  end

  @impl true
  def handle_params(_params, _url, %{assigns: %{live_action: :index}} = socket) do
    {:noreply, socket}
  end
end
