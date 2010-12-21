name "dbapp_load_balancer"
description "dbapp load balancer"
run_list(
  "recipe[haproxy::app_lb]"
)
override_attributes(
  "haproxy" => {
    "app_server_role" => "dbapp"
  }
)
