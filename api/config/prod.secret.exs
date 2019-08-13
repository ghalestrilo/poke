use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :poke, PokeWeb.Endpoint,
  secret_key_base: "fE+eyUF1kCIfK44m6Yptfb5wPwhF7J4DYklOOI2P3E0j9Dlealu6ucbU4UFBVLFm"

# Configure your database
config :poke, Poke.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "poke_prod",
  pool_size: 15
