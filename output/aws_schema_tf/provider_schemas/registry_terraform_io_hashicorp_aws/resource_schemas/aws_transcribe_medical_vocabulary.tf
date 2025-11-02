resource "aws_transcribe_medical_vocabulary" "name" {
  language_code = string (Required)
  vocabulary_file_uri = string (Required)
  vocabulary_name = string (Required)
  arn = string (Computed)
  download_uri = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
