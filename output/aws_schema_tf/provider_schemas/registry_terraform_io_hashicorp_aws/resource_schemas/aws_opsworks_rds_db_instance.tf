resource "aws_opsworks_rds_db_instance" "name" {
  db_password = string (Required)
  db_user = string (Required)
  rds_db_instance_arn = string (Required)
  stack_id = string (Required)
  id = string (Optional, Computed)
}
