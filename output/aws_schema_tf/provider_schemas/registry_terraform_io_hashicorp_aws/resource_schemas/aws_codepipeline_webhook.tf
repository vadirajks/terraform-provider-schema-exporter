resource "aws_codepipeline_webhook" "name" {
  authentication = string (Required)
  name = string (Required)
  target_action = string (Required)
  target_pipeline = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Computed)

  authentication_configuration block "list" (Optional) {
    allowed_ip_range = string (Optional)
    secret_token = string (Optional)
  }

  filter block "set" (Required) {
    json_path = string (Required)
    match_equals = string (Required)
  }
}
