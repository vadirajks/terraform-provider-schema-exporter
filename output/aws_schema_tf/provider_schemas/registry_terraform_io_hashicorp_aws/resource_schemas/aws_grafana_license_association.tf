resource "aws_grafana_license_association" "name" {
  license_type = string (Required)
  workspace_id = string (Required)
  free_trial_expiration = string (Computed)
  grafana_token = string (Optional)
  id = string (Optional, Computed)
  license_expiration = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
