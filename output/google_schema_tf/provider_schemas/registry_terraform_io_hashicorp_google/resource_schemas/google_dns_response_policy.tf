resource "google_dns_response_policy" "name" {
  response_policy_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  gke_clusters block "list" (Optional) {
    gke_cluster_name = string (Required)
  }

  networks block "list" (Optional) {
    network_url = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
