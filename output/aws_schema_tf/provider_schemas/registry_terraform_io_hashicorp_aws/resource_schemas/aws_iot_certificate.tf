resource "aws_iot_certificate" "name" {
  active = bool (Required)
  arn = string (Computed)
  ca_certificate_id = string (Computed)
  ca_pem = string (Optional)
  certificate_pem = string (Optional, Computed)
  csr = string (Optional)
  id = string (Optional, Computed)
  private_key = string (Computed)
  public_key = string (Computed)
  region = string (Optional, Computed)
}
