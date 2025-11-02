resource "azurerm_synapse_sql_pool_workload_classifier" "name" {
  member_name = string (Required)
  name = string (Required)
  workload_group_id = string (Required)
  context = string (Optional)
  end_time = string (Optional)
  id = string (Optional, Computed)
  importance = string (Optional)
  label = string (Optional)
  start_time = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
