resource "aws_wafv2_api_key" "name" {
  scope = string (Required)
  token_domains = ['set', 'string'] (Required)
  api_key = string (Computed)
  region = string (Optional, Computed)
}
