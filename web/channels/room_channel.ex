defmodule Slaq.RoomChannel do
  use Phoenix.Channel

  def join("rooms:lobby", msg, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end
end
