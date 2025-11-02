resource "aws_qbusiness_application" "name" {
  display_name = string (Required)
  iam_service_role_arn = string (Required)
  identity_center_instance_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  identity_center_application_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  attachments_configuration block "list" (Optional) {
    attachments_control_mode = string (Required)
  }

  encryption_configuration block "list" (Optional) {
    kms_key_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
