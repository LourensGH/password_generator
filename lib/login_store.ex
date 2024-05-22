defmodule LoginStore do
  use Agent

  def start_link(_) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def add_login(site, username, password) do
    Agent.update(__MODULE__, fn logins ->
      Map.put(logins, site, %{username: username, password: password})
    end)
  end

  def get_login(site) do
    Agent.get(__MODULE__, &Map.get(&1, site))
  end

  def list_logins do
    Agent.get(__MODULE__, &Map.keys(&1))
  end
end
