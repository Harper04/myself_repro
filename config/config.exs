# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :myself_repro, MyselfReproWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RBqltc+JTtwVtskJaKe/VW4nZEn+qRzC3rgLBQIRytz8bUq/z1dk+tZAF6A7hE3B",
  render_errors: [view: MyselfReproWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyselfRepro.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "vnRZyMw+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
