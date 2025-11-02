data "aws_redshift_orderable_cluster" "name" {
  availability_zones = ['list', 'string'] (Computed)
  cluster_type = string (Optional, Computed)
  cluster_version = string (Optional, Computed)
  id = string (Optional, Computed)
  node_type = string (Optional, Computed)
  preferred_node_types = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
}
