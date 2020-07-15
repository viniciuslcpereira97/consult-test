import Config

config :publisher, Publisher.Config,
  host: {{ key "shop/queue/dev/host" }},
  username: {{ key "shop/queue/dev/username" }},
  password: {{ key "shop/queue/dev/password" }}
