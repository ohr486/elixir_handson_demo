ExUnit.start()

defmodule Req do
  def get(path) do
    HTTPoison.get("http://localhost:4000" <> path)
  end
end
