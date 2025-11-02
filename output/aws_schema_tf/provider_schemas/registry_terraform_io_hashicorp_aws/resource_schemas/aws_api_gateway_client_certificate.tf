resource "aws_api_gateway_client_certificate" "name" {
  arn = string (Computed)
  created_date = string (Computed)
  description = string (Optional)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  pem_encoded_certificate = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
