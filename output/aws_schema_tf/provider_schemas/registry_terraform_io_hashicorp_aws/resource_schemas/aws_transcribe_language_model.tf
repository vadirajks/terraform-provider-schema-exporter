resource "aws_transcribe_language_model" "name" {
  base_model_name = string (Required)
  language_code = string (Required)
  model_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  input_data_config block "list" (Required) {
    data_access_role_arn = string (Required)
    s3_uri = string (Required)
    tuning_data_s3_uri = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
