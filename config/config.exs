# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exam,
  ecto_repos: [Exam.Repo]

# Configures the endpoint
config :exam, Exam.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jHbzXoY3OrDvYWRui76mWxhybTHoSccrHd6L2LICDdbpoGxnOiVv8A8fXPxUEq7z",
  render_errors: [view: Exam.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Exam.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
