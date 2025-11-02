resource "aws_macie2_custom_data_identifier" "name" {
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  ignore_words = ['set', 'string'] (Optional)
  keywords = ['set', 'string'] (Optional)
  maximum_match_distance = number (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  regex = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
