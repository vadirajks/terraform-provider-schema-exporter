resource "azurerm_resource_group_cost_management_view" "name" {
  accumulated = bool (Required)
  chart_type = string (Required)
  display_name = string (Required)
  name = string (Required)
  report_type = string (Required)
  resource_group_id = string (Required)
  timeframe = string (Required)
  id = string (Optional, Computed)

  dataset block "list" (Required) {
    granularity = string (Required)

    aggregation block "set" (Required) {
      column_name = string (Required)
      name = string (Required)
    }

    grouping block "list" (Optional) {
      name = string (Required)
      type = string (Required)
    }

    sorting block "list" (Optional) {
      direction = string (Required)
      name = string (Required)
    }
  }

  kpi block "list" (Optional) {
    type = string (Required)
  }

  pivot block "list" (Optional) {
    name = string (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
