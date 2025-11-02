resource "google_cloud_identity_group_membership" "name" {
  group = string (Required)
  create_ignore_already_exists = bool (Optional)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  type = string (Computed)
  update_time = string (Computed)

  preferred_member_key block "list" (Optional) {
    id = string (Required)
    namespace = string (Optional)
  }

  roles block "set" (Required) {
    name = string (Required)

    expiry_detail block "list" (Optional) {
      expire_time = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
