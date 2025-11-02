data "google_cloud_identity_group_lookup" "name" {
  id = string (Optional, Computed)
  name = string (Computed)

  group_key block "list" (Required) {
    id = string (Required)
    namespace = string (Optional)
  }
}
