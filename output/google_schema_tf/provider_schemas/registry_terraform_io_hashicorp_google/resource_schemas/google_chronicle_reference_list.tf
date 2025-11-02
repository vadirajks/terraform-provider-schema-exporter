resource "google_chronicle_reference_list" "name" {
  description = string (Required)
  instance = string (Required)
  location = string (Required)
  reference_list_id = string (Required)
  syntax_type = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  revision_create_time = string (Computed)
  rule_associations_count = number (Computed)
  rules = ['list', 'string'] (Computed)

  entries block "list" (Required) {
    value = string (Required)
  }

  scope_info block "list" (Optional) {

    reference_list_scope block "list" (Optional) {
      scope_names = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
