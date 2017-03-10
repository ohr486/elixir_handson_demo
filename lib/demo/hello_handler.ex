defmodule Demo.HelloHandler do
  def init(req, opts) do
    headers = %{"content-type" => "text/plain"}
    body = "Hello, Cowboy Handler!"
    req2 = :cowboy_req.reply(200, headers, body, req)
    {:ok, req2, opts}
  end
end
