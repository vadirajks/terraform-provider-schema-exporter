resource "aws_sesv2_account_vdm_attributes" "name" {
  vdm_enabled = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  dashboard_attributes block "list" (Optional) {
    engagement_metrics = string (Optional)
  }

  guardian_attributes block "list" (Optional) {
    optimized_shared_delivery = string (Optional)
  }
}
