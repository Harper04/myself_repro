defmodule MyselfReproWeb.ALive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <%= live_component @socket, MyselfReproWeb.AppleCounterComponent, id: :apples %>
    """
  end
end
