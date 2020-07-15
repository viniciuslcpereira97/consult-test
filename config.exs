import Config

#########################
# Shop Web
#########################
config :shop_web, ShopWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

#########################
# Logger
#########################
config :logger, :console, format: "[$level] $message\n"
config :logger, level: :debug

#########################
# Phoenix
#########################
config :phoenix, :plug_init_mode, :runtime

config :phoenix, :stacktrace_depth, 20

config :worker_base_ex, WorkerBaseEx.QueueConnection,
  host: "localhost:3306",
  username: ingresse,
  password: ingresse

import_config "./modules/dev/shop.exs"
import_config "./modules/dev/inventory.exs"
import_config "./modules/dev/publisher.exs"
