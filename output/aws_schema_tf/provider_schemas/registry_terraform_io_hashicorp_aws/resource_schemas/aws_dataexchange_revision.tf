resource "aws_dataexchange_revision" "name" {
  data_set_id = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  revision_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
