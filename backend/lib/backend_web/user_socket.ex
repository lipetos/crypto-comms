defmodule BackendWeb.UserSocket do
  use Phoenix.Socket

  channel("room:session", BackendWeb.RoomChannel)

  # This function is used to authenticate and authorize sockets
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  # This function handles identifying a socket for tracking
  def id(_socket), do: nil
end
