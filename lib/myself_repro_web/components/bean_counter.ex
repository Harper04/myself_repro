defmodule MyselfReproWeb.BeanCounterComponent do
  use Phoenix.LiveComponent

  def mount(socket) do
    socket |> assign(beans: 0) |> (&{:ok, &1}).()
  end

  def render(assigns) do
    ~L"""
    beans: <%= @beans %>
    <button phx-click="inc" phx-target="<%= @myself %>" >count bean</button>
    """
  end

  def handle_event("inc", _, socket = %{assigns: %{beans: beans}}) do
    socket |> assign(beans: beans + 1) |> (&{:noreply, &1}).()
  end
end
