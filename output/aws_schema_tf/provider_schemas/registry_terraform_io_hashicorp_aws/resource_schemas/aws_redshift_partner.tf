resource "aws_redshift_partner" "name" {
  account_id = string (Required)
  cluster_identifier = string (Required)
  database_name = string (Required)
  partner_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_message = string (Computed)
}
