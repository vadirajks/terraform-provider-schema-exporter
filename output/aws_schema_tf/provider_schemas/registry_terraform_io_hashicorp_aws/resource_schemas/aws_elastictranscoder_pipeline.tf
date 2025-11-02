resource "aws_elastictranscoder_pipeline" "name" {
  input_bucket = string (Required)
  role = string (Required)
  arn = string (Computed)
  aws_kms_key_arn = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  output_bucket = string (Optional, Computed)
  region = string (Optional, Computed)

  content_config block "list" (Optional) {
    bucket = string (Optional, Computed)
    storage_class = string (Optional)
  }

  content_config_permissions block "set" (Optional) {
    access = ['list', 'string'] (Optional)
    grantee = string (Optional)
    grantee_type = string (Optional)
  }

  notifications block "list" (Optional) {
    completed = string (Optional)
    error = string (Optional)
    progressing = string (Optional)
    warning = string (Optional)
  }

  thumbnail_config block "list" (Optional) {
    bucket = string (Optional, Computed)
    storage_class = string (Optional)
  }

  thumbnail_config_permissions block "set" (Optional) {
    access = ['list', 'string'] (Optional)
    grantee = string (Optional)
    grantee_type = string (Optional)
  }
}
