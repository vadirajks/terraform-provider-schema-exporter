resource "google_bigtable_app_profile" "name" {
  app_profile_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  ignore_warnings = bool (Optional)
  instance = string (Optional)
  multi_cluster_routing_cluster_ids = ['list', 'string'] (Optional)
  multi_cluster_routing_use_any = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  row_affinity = bool (Optional)

  data_boost_isolation_read_only block "list" (Optional) {
    compute_billing_owner = string (Required)
  }

  single_cluster_routing block "list" (Optional) {
    cluster_id = string (Required)
    allow_transactional_writes = bool (Optional)
  }

  standard_isolation block "list" (Optional) {
    priority = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
