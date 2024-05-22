defmodule PasswordGenerator do
  @charset "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+"

  def generate_password(length) when length > 0 do
    1..length
    |> Enum.map(fn _ -> Enum.random(@charset) end)
    |> Enum.join()
  end
end
