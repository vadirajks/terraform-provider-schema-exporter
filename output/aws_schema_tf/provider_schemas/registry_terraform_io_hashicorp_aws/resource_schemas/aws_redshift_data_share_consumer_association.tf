resource "aws_redshift_data_share_consumer_association" "name" {
  data_share_arn = string (Required)
  allow_writes = bool (Optional)
  associate_entire_account = bool (Optional)
  consumer_arn = string (Optional)
  consumer_region = string (Optional)
  id = string (Computed)
  managed_by = string (Computed)
  producer_arn = string (Computed)
  region = string (Optional, Computed)
}
