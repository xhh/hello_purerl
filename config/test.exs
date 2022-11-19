import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello, HelloWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "B//xQHH+mitOvnwML5DP2ks+21uG9/vuke66kKgD4JeG0fwcoMI0+KN8K+63RT3S",
  server: false

# In test we don't send emails.
config :hello, Hello.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
