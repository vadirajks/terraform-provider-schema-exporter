data "aws_eks_node_groups" "name" {
  cluster_name = string (Required)
  id = string (Optional, Computed)
  names = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
