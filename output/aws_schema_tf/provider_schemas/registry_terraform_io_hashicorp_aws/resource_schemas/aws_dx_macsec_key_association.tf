resource "aws_dx_macsec_key_association" "name" {
  connection_id = string (Required)
  cak = string (Optional)
  ckn = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  secret_arn = string (Optional, Computed)
  start_on = string (Computed)
  state = string (Computed)
}
