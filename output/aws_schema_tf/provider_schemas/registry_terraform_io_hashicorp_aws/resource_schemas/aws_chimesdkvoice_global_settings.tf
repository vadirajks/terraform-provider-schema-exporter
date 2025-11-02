resource "aws_chimesdkvoice_global_settings" "name" {
  id = string (Optional, Computed)

  voice_connector block "list" (Required) {
    cdr_bucket = string (Optional)
  }
}
