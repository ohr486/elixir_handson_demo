defmodule Demo.GreetHandler do
  def init(req, opts) do
    name = req.bindings[:name]
    headers = %{"content-type" => "text/plain"}
    body = "Hello, #{name}!"
    {:ok, resp} = :cowboy_req.reply(200, headers, body, req)
    {:ok, resp, opts}
  end
end
