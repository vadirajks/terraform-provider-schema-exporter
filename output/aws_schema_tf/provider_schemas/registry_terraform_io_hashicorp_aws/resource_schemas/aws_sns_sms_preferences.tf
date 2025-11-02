resource "aws_sns_sms_preferences" "name" {
  default_sender_id = string (Optional)
  default_sms_type = string (Optional)
  delivery_status_iam_role_arn = string (Optional)
  delivery_status_success_sampling_rate = string (Optional)
  id = string (Optional, Computed)
  monthly_spend_limit = number (Optional, Computed)
  region = string (Optional, Computed)
  usage_report_s3_bucket = string (Optional)
}
