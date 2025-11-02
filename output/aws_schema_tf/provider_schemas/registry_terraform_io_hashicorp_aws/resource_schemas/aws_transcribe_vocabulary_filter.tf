resource "aws_transcribe_vocabulary_filter" "name" {
  language_code = string (Required)
  vocabulary_filter_name = string (Required)
  arn = string (Computed)
  download_uri = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vocabulary_filter_file_uri = string (Optional)
  words = ['list', 'string'] (Optional)
}
