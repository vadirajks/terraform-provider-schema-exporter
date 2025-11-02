resource "aws_dsql_cluster_peering" "name" {
  clusters = ['set', 'string'] (Required)
  identifier = string (Required)
  witness_region = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
