data "aws_bedrock_foundation_models" "name" {
  by_customization_type = string (Optional)
  by_inference_type = string (Optional)
  by_output_modality = string (Optional)
  by_provider = string (Optional)
  id = string (Computed)
  model_summaries = ['list', ['object', {'customizations_supported': ['set', 'string'], 'inference_types_supported': ['set', 'string'], 'input_modalities': ['set', 'string'], 'model_arn': 'string', 'model_id': 'string', 'model_name': 'string', 'output_modalities': ['set', 'string'], 'provider_name': 'string', 'response_streaming_supported': 'bool'}]] (Computed)
  region = string (Optional, Computed)
}
