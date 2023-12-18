defmodule LiveviewProblemExampleWeb.PagesLive.Page2 do
  use LiveviewProblemExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1 class="liveview-cont">Page 2</h1>
    """
  end
end
