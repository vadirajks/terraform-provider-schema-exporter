resource "aws_devopsguru_service_integration" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  kms_server_side_encryption block "list" (Optional) {
    kms_key_id = string (Optional, Computed)
    opt_in_status = string (Optional, Computed)
    type = string (Optional, Computed)
  }

  logs_anomaly_detection block "list" (Optional) {
    opt_in_status = string (Optional, Computed)
  }

  ops_center block "list" (Optional) {
    opt_in_status = string (Optional, Computed)
  }
}
