resource "aws_eks_addon" "name" {
  addon_name = string (Required)
  cluster_name = string (Required)
  addon_version = string (Optional, Computed)
  arn = string (Computed)
  configuration_values = string (Optional, Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  modified_at = string (Computed)
  preserve = bool (Optional)
  region = string (Optional, Computed)
  resolve_conflicts_on_create = string (Optional)
  resolve_conflicts_on_update = string (Optional)
  service_account_role_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  pod_identity_association block "set" (Optional) {
    role_arn = string (Required)
    service_account = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
