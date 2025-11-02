data "aws_redshift_cluster_credentials" "name" {
  cluster_identifier = string (Required)
  db_user = string (Required)
  auto_create = bool (Optional)
  db_groups = ['set', 'string'] (Optional)
  db_name = string (Optional)
  db_password = string (Computed)
  duration_seconds = number (Optional)
  expiration = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
