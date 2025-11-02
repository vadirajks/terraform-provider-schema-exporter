resource "aws_db_instance_role_association" "name" {
  db_instance_identifier = string (Required)
  feature_name = string (Required)
  role_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
