resource "aws_rds_cluster_role_association" "name" {
  db_cluster_identifier = string (Required)
  role_arn = string (Required)
  feature_name = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
