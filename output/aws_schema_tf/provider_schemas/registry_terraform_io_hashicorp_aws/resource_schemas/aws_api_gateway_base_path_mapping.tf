resource "aws_api_gateway_base_path_mapping" "name" {
  api_id = string (Required)
  domain_name = string (Required)
  base_path = string (Optional)
  domain_name_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  stage_name = string (Optional)
}
