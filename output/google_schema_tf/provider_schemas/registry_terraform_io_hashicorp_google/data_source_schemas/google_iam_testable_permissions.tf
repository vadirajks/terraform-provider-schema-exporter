data "google_iam_testable_permissions" "name" {
  full_resource_name = string (Required)
  custom_support_level = string (Optional)
  id = string (Optional, Computed)
  permissions = ['list', ['object', {'api_disabled': 'bool', 'custom_support_level': 'string', 'name': 'string', 'stage': 'string', 'title': 'string'}]] (Computed)
  stages = ['list', 'string'] (Optional)
}
