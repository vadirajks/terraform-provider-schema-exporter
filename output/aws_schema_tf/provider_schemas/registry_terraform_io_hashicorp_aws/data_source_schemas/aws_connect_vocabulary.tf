data "aws_connect_vocabulary" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  content = string (Computed)
  failure_reason = string (Computed)
  id = string (Optional, Computed)
  language_code = string (Computed)
  last_modified_time = string (Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vocabulary_id = string (Optional, Computed)
}
