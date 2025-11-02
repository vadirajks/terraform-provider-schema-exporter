resource "aws_sns_topic_data_protection_policy" "name" {
  arn = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
