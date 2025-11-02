resource "aws_kendra_faq" "name" {
  index_id = string (Required)
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Optional)
  error_message = string (Computed)
  faq_id = string (Computed)
  file_format = string (Optional)
  id = string (Optional, Computed)
  language_code = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  updated_at = string (Computed)

  s3_path block "list" (Required) {
    bucket = string (Required)
    key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
