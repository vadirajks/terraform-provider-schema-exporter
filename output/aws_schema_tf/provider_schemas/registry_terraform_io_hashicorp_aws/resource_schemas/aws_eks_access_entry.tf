resource "aws_eks_access_entry" "name" {
  cluster_name = string (Required)
  principal_arn = string (Required)
  access_entry_arn = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  kubernetes_groups = ['set', 'string'] (Optional, Computed)
  modified_at = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)
  user_name = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
