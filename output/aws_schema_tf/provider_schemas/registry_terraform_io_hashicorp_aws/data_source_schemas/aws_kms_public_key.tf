data "aws_kms_public_key" "name" {
  key_id = string (Required)
  arn = string (Computed)
  customer_master_key_spec = string (Computed)
  encryption_algorithms = ['list', 'string'] (Computed)
  grant_tokens = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  key_usage = string (Computed)
  public_key = string (Computed)
  public_key_pem = string (Computed)
  region = string (Optional, Computed)
  signing_algorithms = ['list', 'string'] (Computed)
}
