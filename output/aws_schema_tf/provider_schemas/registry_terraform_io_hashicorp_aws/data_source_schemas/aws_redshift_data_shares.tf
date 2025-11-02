data "aws_redshift_data_shares" "name" {
  data_shares = ['list', ['object', {'data_share_arn': 'string', 'managed_by': 'string', 'producer_arn': 'string'}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
