import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :memory, MemoryWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "RthEcCG7GyoRicEH0dy8dBlTvubs01je9w7fDVq2uKe0usLdkh5P/g6vXa4XF5++",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
