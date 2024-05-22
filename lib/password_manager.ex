defmodule PasswordManager do
  def start do
    LoginStore.start_link(nil)
    :ok
  end

  def add_login(site, username) do
    password = PasswordGenerator.generate_password(12)
    LoginStore.add_login(site, username, password)
    {:ok, site, username, password}
  end

  def get_login(site) do
    LoginStore.get_login(site)
  end

  def list_logins do
    LoginStore.list_logins()
  end
end
