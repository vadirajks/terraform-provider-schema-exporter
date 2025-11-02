resource "aws_quicksight_ingestion" "name" {
  data_set_id = string (Required)
  ingestion_id = string (Required)
  ingestion_type = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Computed)
  ingestion_status = string (Computed)
  region = string (Optional, Computed)
}
