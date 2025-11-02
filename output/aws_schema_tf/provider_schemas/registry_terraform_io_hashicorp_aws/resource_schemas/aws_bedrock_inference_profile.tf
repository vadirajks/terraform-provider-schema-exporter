resource "aws_bedrock_inference_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Optional)
  id = string (Computed)
  models = ['list', ['object', {'model_arn': 'string'}]] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  type = string (Computed)
  updated_at = string (Computed)

  model_source block "list" (Optional) {
    copy_from = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
