name "dbapp"
description "dbapp front end application server."
run_list(
  "recipe[mysql::client]",
  "recipe[application]",
  "recipe[dbapp::status]"
)
