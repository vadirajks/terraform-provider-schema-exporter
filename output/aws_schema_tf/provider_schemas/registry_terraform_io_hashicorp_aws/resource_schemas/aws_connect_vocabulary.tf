resource "aws_connect_vocabulary" "name" {
  content = string (Required)
  instance_id = string (Required)
  language_code = string (Required)
  name = string (Required)
  arn = string (Computed)
  failure_reason = string (Computed)
  id = string (Optional, Computed)
  last_modified_time = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vocabulary_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
