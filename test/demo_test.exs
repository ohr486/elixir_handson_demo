defmodule DemoTest do
  use ExUnit.Case
  doctest Demo

  setup do
    {:ok, _started1} = Application.ensure_all_started(:gun)
    :ok
  end

  test "ws connect" do
    {:ok, pid} = :gun.open('localhost', 4000)
    {:ok, :http} = :gun.await_up(pid)
    _mref = :gun.ws_upgrade(pid, "/websocket")
    assert_receive({:gun_ws_upgrade, ^pid, :ok, _headers})
    :gun.ws_send(pid, {:text, "Hello!"})
    assert_receive({:gun_ws, ^pid, {:text, "Hello!"}})
  end

  test "the truth" do
    assert 1 + 1 == 2
  end
end
