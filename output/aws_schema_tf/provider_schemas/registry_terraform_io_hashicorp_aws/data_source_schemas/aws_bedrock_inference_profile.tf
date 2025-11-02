data "aws_bedrock_inference_profile" "name" {
  inference_profile_id = string (Required)
  created_at = string (Computed)
  description = string (Computed)
  inference_profile_arn = string (Computed)
  inference_profile_name = string (Computed)
  models = ['list', ['object', {'model_arn': 'string'}]] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  type = string (Computed)
  updated_at = string (Computed)
}
