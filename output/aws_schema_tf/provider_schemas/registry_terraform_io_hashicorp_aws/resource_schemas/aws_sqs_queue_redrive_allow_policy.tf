resource "aws_sqs_queue_redrive_allow_policy" "name" {
  queue_url = string (Required)
  redrive_allow_policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
