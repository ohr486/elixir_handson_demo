defmodule Demo.GreetHandler do
  def init(req, opts) do
    name = req.bindings[:name]
    headers = %{"content-type" => "text/plain"}
    body = "Hello, #{name}!"
    req2 = :cowboy_req.reply(200, headers, body, req)
    {:ok, req2, opts}
  end
end
