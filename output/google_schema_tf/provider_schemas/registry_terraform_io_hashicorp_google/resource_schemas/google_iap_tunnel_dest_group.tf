resource "google_iap_tunnel_dest_group" "name" {
  group_name = string (Required)
  cidrs = ['list', 'string'] (Optional)
  fqdns = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
