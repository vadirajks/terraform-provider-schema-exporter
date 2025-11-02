data "aws_eks_cluster_auth" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  token = string (Computed)
}
