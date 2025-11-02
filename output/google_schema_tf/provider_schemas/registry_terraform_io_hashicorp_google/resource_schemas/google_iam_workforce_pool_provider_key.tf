resource "google_iam_workforce_pool_provider_key" "name" {
  key_id = string (Required)
  location = string (Required)
  provider_id = string (Required)
  use = string (Required)
  workforce_pool_id = string (Required)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  state = string (Computed)

  key_data block "list" (Required) {
    key_spec = string (Required)
    format = string (Computed)
    key = string (Computed)
    not_after_time = string (Computed)
    not_before_time = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
