# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :minioex,
  ecto_repos: [Minioex.Repo]

# Configures the endpoint
config :minioex, MinioexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h8ctnpJGsuZvasvz0Huc/l34H+Vm2uKHGlpFpAwoU1lZexcAKkkLXqvn8kM93cIN",
  render_errors: [view: MinioexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Minioex.PubSub,
  live_view: [signing_salt: "6nsfWoll"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
