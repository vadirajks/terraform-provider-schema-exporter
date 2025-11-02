resource "aws_sqs_queue_policy" "name" {
  policy = string (Required)
  queue_url = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
