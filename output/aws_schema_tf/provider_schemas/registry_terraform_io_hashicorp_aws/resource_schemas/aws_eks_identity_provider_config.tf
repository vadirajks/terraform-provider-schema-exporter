resource "aws_eks_identity_provider_config" "name" {
  cluster_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  oidc block "list" (Required) {
    client_id = string (Required)
    identity_provider_config_name = string (Required)
    issuer_url = string (Required)
    groups_claim = string (Optional)
    groups_prefix = string (Optional)
    required_claims = ['map', 'string'] (Optional)
    username_claim = string (Optional)
    username_prefix = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
