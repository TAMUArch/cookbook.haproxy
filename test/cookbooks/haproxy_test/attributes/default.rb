default[:haproxy][:options][:frontends] = {
  "http" => {
    "default_backend" => "servers-http",
    "bind" => [
      "127.0.0.1:80"
    ],
    "maxconn" => "20"
  }
}

default[:haproxy][:options][:backends] = {
  "servers-http" => {
    "server" => [
      "localhost 127.0.0.1:4000 weight 1 maxconn 20 check",
      "localhost 127.0.0.1:4001 weight 1 maxconn 20 check"
    ]
  }
}
