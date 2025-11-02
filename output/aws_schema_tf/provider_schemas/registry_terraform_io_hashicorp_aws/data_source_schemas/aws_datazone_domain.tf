data "aws_datazone_domain" "name" {
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Computed)
  domain_version = string (Computed)
  id = string (Optional, Computed)
  last_updated_at = string (Computed)
  managed_account_id = string (Computed)
  name = string (Optional, Computed)
  portal_url = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
