data "aws_bedrock_custom_models" "name" {
  id = string (Computed)
  model_summaries = ['list', ['object', {'creation_time': 'string', 'model_arn': 'string', 'model_name': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
