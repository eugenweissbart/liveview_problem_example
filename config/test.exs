import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :liveview_problem_example, LiveviewProblemExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "j5XUIgU0JDPRW9UqYGe3e2Ja7V+7qKdshRy5VZl2VcU1YMwiiCqAA39UPs9l+9XP",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
