data "aws_ssoadmin_principal_application_assignments" "name" {
  instance_arn = string (Required)
  principal_id = string (Required)
  principal_type = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)

  application_assignments block "list" (Optional) {
    application_arn = string (Computed)
    principal_id = string (Computed)
    principal_type = string (Computed)
  }
}
