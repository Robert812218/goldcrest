defmodule CowboyExample.Router do
  @moduledoc"""
  This module defines all the routes, params an handlers. 
  This module is also the handler module for the root route.
  """
  require Logger
  @doc """
  Returns the list of routes configured by this web server.
  """
  def routes do
    [
      # For now, this module itself will handle root
      # requests
      {:_, [{"/", __MODULE__, []}]}
    ]
  end
end
