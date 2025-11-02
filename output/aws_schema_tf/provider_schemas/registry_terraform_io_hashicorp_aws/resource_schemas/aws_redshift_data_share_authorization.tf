resource "aws_redshift_data_share_authorization" "name" {
  consumer_identifier = string (Required)
  data_share_arn = string (Required)
  allow_writes = bool (Optional)
  id = string (Computed)
  managed_by = string (Computed)
  producer_arn = string (Computed)
  region = string (Optional, Computed)
}
