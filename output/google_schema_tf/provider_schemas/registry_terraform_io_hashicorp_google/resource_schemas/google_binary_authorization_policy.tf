resource "google_binary_authorization_policy" "name" {
  description = string (Optional)
  global_policy_evaluation_mode = string (Optional, Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  admission_whitelist_patterns block "list" (Optional) {
    name_pattern = string (Required)
  }

  cluster_admission_rules block "set" (Optional) {
    cluster = string (Required)
    enforcement_mode = string (Required)
    evaluation_mode = string (Required)
    require_attestations_by = ['set', 'string'] (Optional)
  }

  default_admission_rule block "list" (Required) {
    enforcement_mode = string (Required)
    evaluation_mode = string (Required)
    require_attestations_by = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
