data "aws_connect_prompt" "name" {
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  prompt_id = string (Computed)
  region = string (Optional, Computed)
}
