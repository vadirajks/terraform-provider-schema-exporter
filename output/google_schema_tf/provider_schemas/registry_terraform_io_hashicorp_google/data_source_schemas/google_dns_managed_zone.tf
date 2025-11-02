data "google_dns_managed_zone" "name" {
  name = string (Required)
  description = string (Computed)
  dns_name = string (Computed)
  id = string (Computed)
  managed_zone_id = number (Computed)
  name_servers = ['list', 'string'] (Computed)
  project = string (Optional)
  visibility = string (Computed)
}
