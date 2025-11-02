data "aws_eks_addon" "name" {
  addon_name = string (Required)
  cluster_name = string (Required)
  addon_version = string (Computed)
  arn = string (Computed)
  configuration_values = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  modified_at = string (Computed)
  pod_identity_association = ['set', ['object', {'role_arn': 'string', 'service_account': 'string'}]] (Computed)
  region = string (Optional, Computed)
  service_account_role_arn = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
