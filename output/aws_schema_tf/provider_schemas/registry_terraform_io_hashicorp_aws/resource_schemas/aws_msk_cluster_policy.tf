resource "aws_msk_cluster_policy" "name" {
  cluster_arn = string (Required)
  policy = string (Required)
  current_version = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
