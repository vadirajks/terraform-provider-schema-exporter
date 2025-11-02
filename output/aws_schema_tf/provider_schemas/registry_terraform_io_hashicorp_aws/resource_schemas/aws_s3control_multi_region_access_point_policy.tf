resource "aws_s3control_multi_region_access_point_policy" "name" {
  account_id = string (Optional, Computed)
  established = string (Computed)
  id = string (Optional, Computed)
  proposed = string (Computed)
  region = string (Optional, Computed)

  details block "list" (Required) {
    name = string (Required)
    policy = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
