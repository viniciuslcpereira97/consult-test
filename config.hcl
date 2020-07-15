consul {
	address = "localhost:8500"

  retry {
    enabled = true
    attempts = 2
    backoff = "250ms"
  }
}

template {
	source = "./config.tpl"
	destination = "./config.secret.exs"
	perms = 0640
	command = ""
}


template {
  source = "./config.tpl"
  destination = "./publisher.secret.exs"
  perms = 0640
  command = ""
}


template {
  source = "./config.tpl"
  destination = "./shop.secret.exs"
  perms = 0640
  command = ""
}
