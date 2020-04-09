defmodule MyselfReproWeb.BLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <%= live_component @socket, MyselfReproWeb.BeanCounterComponent, id: :beans %>
    """
  end
end
