# PasswordGenerator
Simple in memory login storage functionality with password generator.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `password_generator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:password_generator, "~> 0.1.0"}
  ]
end
```

# Test With
iex -S mix

PasswordManager.start()

{:ok, "example.com", "user1", password} = PasswordManager.add_login("example.com", "user1")
IO.puts("Generated password: #{password}")

IO.inspect(PasswordManager.get_login("example.com"))

IO.inspect(PasswordManager.list_logins())
