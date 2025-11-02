resource "google_firebaserules_ruleset" "name" {
  create_time = string (Computed)
  id = string (Optional, Computed)
  metadata = ['list', ['object', {'services': ['list', 'string']}]] (Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  source block "list" (Required) {
    language = string (Optional)

    files block "list" (Required) {
      content = string (Required)
      name = string (Required)
      fingerprint = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
