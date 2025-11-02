resource "aws_bedrock_custom_model" "name" {
  base_model_identifier = string (Required)
  custom_model_name = string (Required)
  hyperparameters = ['map', 'string'] (Required)
  job_name = string (Required)
  role_arn = string (Required)
  custom_model_arn = string (Computed)
  custom_model_kms_key_id = string (Optional)
  customization_type = string (Optional, Computed)
  id = string (Computed)
  job_arn = string (Computed)
  job_status = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  training_metrics = ['list', ['object', {'training_loss': 'number'}]] (Computed)
  validation_metrics = ['list', ['object', {'validation_loss': 'number'}]] (Computed)

  output_data_config block "list" (Optional) {
    s3_uri = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  training_data_config block "list" (Optional) {
    s3_uri = string (Required)
  }

  validation_data_config block "list" (Optional) {

    validator block "list" (Optional) {
      s3_uri = string (Required)
    }
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
  }
}
