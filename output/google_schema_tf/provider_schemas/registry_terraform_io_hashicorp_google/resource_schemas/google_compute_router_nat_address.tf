resource "google_compute_router_nat_address" "name" {
  nat_ips = ['set', 'string'] (Required)
  router = string (Required)
  router_nat = string (Required)
  drain_nat_ips = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
