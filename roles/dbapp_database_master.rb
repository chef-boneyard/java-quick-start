name "dbapp_database_master"
description "Database master for the dbapp application."
run_list(
  "recipe[database::master]"
)
