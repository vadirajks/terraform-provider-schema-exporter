resource "aws_eks_access_policy_association" "name" {
  cluster_name = string (Required)
  policy_arn = string (Required)
  principal_arn = string (Required)
  associated_at = string (Computed)
  id = string (Optional, Computed)
  modified_at = string (Computed)
  region = string (Optional, Computed)

  access_scope block "list" (Required) {
    type = string (Required)
    namespaces = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
