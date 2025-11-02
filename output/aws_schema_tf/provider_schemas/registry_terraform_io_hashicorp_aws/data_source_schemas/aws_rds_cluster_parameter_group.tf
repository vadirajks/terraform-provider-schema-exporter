data "aws_rds_cluster_parameter_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  family = string (Computed)
  region = string (Optional, Computed)
}
