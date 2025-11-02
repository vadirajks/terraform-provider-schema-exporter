resource "aws_kendra_query_suggestions_block_list" "name" {
  index_id = string (Required)
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  query_suggestions_block_list_id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  source_s3_path block "list" (Required) {
    bucket = string (Required)
    key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
