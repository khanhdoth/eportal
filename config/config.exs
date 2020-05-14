# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :eportal,
  ecto_repos: [Eportal.Repo]

# Configures the endpoint
config :eportal, EportalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bWynil2edP8N2v0VtPcHHH834uV95LAHvUYyUdFjgclzlmaOdji6Hf6VvP7ZTILg",
  render_errors: [view: EportalWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Eportal.PubSub,
  live_view: [signing_salt: "8OTOWYJh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
