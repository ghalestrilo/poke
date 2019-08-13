# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :poke,
  ecto_repos: [Poke.Repo]

# Configures the endpoint
config :poke, PokeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k6UD0R/tkM2ngGGvZhK5J0rfm1r+V/4fDwXuhPC2s49NWPTxgp2ZJirkbukbv7tt",
  render_errors: [view: PokeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Poke.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
