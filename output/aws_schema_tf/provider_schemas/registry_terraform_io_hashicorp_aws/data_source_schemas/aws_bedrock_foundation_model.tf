data "aws_bedrock_foundation_model" "name" {
  model_id = string (Required)
  customizations_supported = ['set', 'string'] (Computed)
  id = string (Computed)
  inference_types_supported = ['set', 'string'] (Computed)
  input_modalities = ['set', 'string'] (Computed)
  model_arn = string (Computed)
  model_name = string (Computed)
  output_modalities = ['set', 'string'] (Computed)
  provider_name = string (Computed)
  region = string (Optional, Computed)
  response_streaming_supported = bool (Computed)
}
