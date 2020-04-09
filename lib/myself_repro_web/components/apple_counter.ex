defmodule MyselfReproWeb.AppleCounterComponent do
  use Phoenix.LiveComponent

  def mount(socket) do
    socket |> assign(apples: 0) |> (&{:ok, &1}).()
  end

  def render(assigns) do
    ~L"""
    apples: <%= @apples %>
    <button phx-click="inc" phx-target="<%= @myself %>">count apple</button>
    """
  end

  def handle_event("inc", _, socket = %{assigns: %{apples: apples}}) do
    socket |> assign(apples: apples + 1) |> (&{:noreply, &1}).()
  end
end
