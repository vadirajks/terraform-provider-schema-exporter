resource "aws_eks_cluster_auth" "name" { // Ephemeral Resource
  name = string (Required)
  region = string (Optional, Computed)
  token = string (Computed)
}
