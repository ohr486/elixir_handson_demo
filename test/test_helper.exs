ExUnit.start()

defmodule Req do
  @port System.get_env("PORT") || "4000"

  def get(path) do
    HTTPoison.get("http://localhost:#{@port}#{path}")
  end
end
