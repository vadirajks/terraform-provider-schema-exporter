resource "aws_kendra_thesaurus" "name" {
  index_id = string (Required)
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  thesaurus_id = string (Computed)

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
