data "aws_rds_clusters" "name" {
  cluster_arns = ['set', 'string'] (Computed)
  cluster_identifiers = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
