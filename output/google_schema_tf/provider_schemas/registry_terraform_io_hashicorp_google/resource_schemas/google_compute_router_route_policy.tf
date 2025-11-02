resource "google_compute_router_route_policy" "name" {
  name = string (Required)
  router = string (Required)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  type = string (Optional)

  terms block "list" (Required) {
    priority = number (Required)

    actions block "list" (Optional) {
      expression = string (Required)
      description = string (Optional)
      location = string (Optional)
      title = string (Optional)
    }

    match block "list" (Required) {
      expression = string (Required)
      description = string (Optional)
      location = string (Optional)
      title = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
