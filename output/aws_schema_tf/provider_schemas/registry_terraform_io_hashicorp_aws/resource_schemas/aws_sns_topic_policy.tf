resource "aws_sns_topic_policy" "name" {
  arn = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  owner = string (Computed)
  region = string (Optional, Computed)
}
