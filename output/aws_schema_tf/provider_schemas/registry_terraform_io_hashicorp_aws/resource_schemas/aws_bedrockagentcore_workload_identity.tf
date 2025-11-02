resource "aws_bedrockagentcore_workload_identity" "name" {
  name = string (Required)
  allowed_resource_oauth2_return_urls = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  workload_identity_arn = string (Computed)
}
