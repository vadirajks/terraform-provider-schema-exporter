data "aws_bedrock_inference_profiles" "name" {
  inference_profile_summaries = ['list', ['object', {'created_at': 'string', 'description': 'string', 'inference_profile_arn': 'string', 'inference_profile_id': 'string', 'inference_profile_name': 'string', 'models': ['list', ['object', {'model_arn': 'string'}]], 'status': 'string', 'type': 'string', 'updated_at': 'string'}]] (Computed)
  region = string (Optional, Computed)
  type = string (Optional)
}
