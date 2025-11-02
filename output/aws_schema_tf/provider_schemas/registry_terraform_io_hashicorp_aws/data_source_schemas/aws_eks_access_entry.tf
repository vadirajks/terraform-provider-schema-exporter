data "aws_eks_access_entry" "name" {
  cluster_name = string (Required)
  principal_arn = string (Required)
  access_entry_arn = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  kubernetes_groups = ['set', 'string'] (Computed)
  modified_at = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
  user_name = string (Computed)
}
