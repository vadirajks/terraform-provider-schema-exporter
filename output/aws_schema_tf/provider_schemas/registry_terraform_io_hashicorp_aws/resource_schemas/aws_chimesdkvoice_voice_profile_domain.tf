resource "aws_chimesdkvoice_voice_profile_domain" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  server_side_encryption_configuration block "list" (Required) {
    kms_key_arn = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
