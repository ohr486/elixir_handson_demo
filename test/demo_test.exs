defmodule DemoTest do
  use ExUnit.Case
  doctest Demo

  test "should show static files" do
    [
      {"/static/sample.html", "<h1>this is sample page.</h1>"},
      {"/static/chat.html", "チャットメッセージ"},
    ]
    |> Enum.each(fn {path, expected_contents} ->
      assert {:ok, %HTTPoison.Response{status_code: 200, body: body}} = Req.get(path)
      assert String.contains?(body, expected_contents)
    end)
  end
end
