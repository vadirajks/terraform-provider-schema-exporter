resource "google_org_policy_custom_constraint" "name" {
  action_type = string (Required)
  condition = string (Required)
  method_types = ['list', 'string'] (Required)
  name = string (Required)
  parent = string (Required)
  resource_types = ['list', 'string'] (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
