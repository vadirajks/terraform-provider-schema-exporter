resource "azurerm_mssql_virtual_machine_availability_group_listener" "name" {
  name = string (Required)
  sql_virtual_machine_group_id = string (Required)
  availability_group_name = string (Optional)
  id = string (Optional, Computed)
  port = number (Optional)

  load_balancer_configuration block "list" (Optional) {
    load_balancer_id = string (Required)
    private_ip_address = string (Required)
    probe_port = number (Required)
    sql_virtual_machine_ids = ['set', 'string'] (Required)
    subnet_id = string (Required)
  }

  multi_subnet_ip_configuration block "set" (Optional) {
    private_ip_address = string (Required)
    sql_virtual_machine_id = string (Required)
    subnet_id = string (Required)
  }

  replica block "set" (Required) {
    commit = string (Required)
    failover_mode = string (Required)
    readable_secondary = string (Required)
    role = string (Required)
    sql_virtual_machine_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
