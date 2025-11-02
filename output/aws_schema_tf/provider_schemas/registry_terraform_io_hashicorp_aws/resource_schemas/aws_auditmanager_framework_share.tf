resource "aws_auditmanager_framework_share" "name" {
  destination_account = string (Required)
  destination_region = string (Required)
  framework_id = string (Required)
  comment = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
