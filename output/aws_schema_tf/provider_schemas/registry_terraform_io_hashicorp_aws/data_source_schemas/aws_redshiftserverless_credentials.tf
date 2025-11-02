data "aws_redshiftserverless_credentials" "name" {
  workgroup_name = string (Required)
  db_name = string (Optional)
  db_password = string (Computed)
  db_user = string (Computed)
  duration_seconds = number (Optional)
  expiration = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
