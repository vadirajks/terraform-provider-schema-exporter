resource "google_apigee_dns_zone" "name" {
  description = string (Required)
  dns_zone_id = string (Required)
  domain = string (Required)
  org_id = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)

  peering_config block "list" (Required) {
    target_network_id = string (Required)
    target_project_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
