defmodule BackendWeb.RoomChannel do
  use BackendWeb, :channel

  def join("room:session", _payload, socket) do
    {:ok, socket}
  end

  def handle_in("message:new", %{"content" => content}, socket) do
    broadcast(socket, "message:new", %{"content" => content})
    {:noreply, socket}
  end
end
