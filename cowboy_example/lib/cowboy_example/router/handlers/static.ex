defmodule CowboyExample.Router.Handlers.Static do
  @moduledoc """
  This module defines the handler for "/static/:page" route.
  """
  
  require Logger
  
  @doc """
  This handles "/static/:page" route, logs the requests and responds with the requested static HTML page.
  
  Responds with 404 if the page isn't found in the priv/static folder.
  """
  def init(req0, state) do
    Logger.info("Received request: #{inspect req0}")
    req1 = 
      :cowboy_req.reply(
        200,
        %{"content-type" => "text/html"},
        "Hello World",
        req0
      )
    {:ok, req1, state}
  end
end
