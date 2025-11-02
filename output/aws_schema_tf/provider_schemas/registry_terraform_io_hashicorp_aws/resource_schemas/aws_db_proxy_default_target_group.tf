resource "aws_db_proxy_default_target_group" "name" {
  db_proxy_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)

  connection_pool_config block "list" (Optional) {
    connection_borrow_timeout = number (Optional)
    init_query = string (Optional)
    max_connections_percent = number (Optional)
    max_idle_connections_percent = number (Optional)
    session_pinning_filters = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
