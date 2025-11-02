resource "aws_s3_bucket_notification" "name" {
  bucket = string (Required)
  eventbridge = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  lambda_function block "list" (Optional) {
    events = ['set', 'string'] (Required)
    filter_prefix = string (Optional)
    filter_suffix = string (Optional)
    id = string (Optional, Computed)
    lambda_function_arn = string (Optional)
  }

  queue block "list" (Optional) {
    events = ['set', 'string'] (Required)
    queue_arn = string (Required)
    filter_prefix = string (Optional)
    filter_suffix = string (Optional)
    id = string (Optional, Computed)
  }

  topic block "list" (Optional) {
    events = ['set', 'string'] (Required)
    topic_arn = string (Required)
    filter_prefix = string (Optional)
    filter_suffix = string (Optional)
    id = string (Optional, Computed)
  }
}
