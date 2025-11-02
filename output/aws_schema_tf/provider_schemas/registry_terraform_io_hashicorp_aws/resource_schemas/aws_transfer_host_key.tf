resource "aws_transfer_host_key" "name" {
  server_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  host_key_body = string (Optional)
  host_key_body_wo = string (Optional)
  host_key_fingerprint = string (Computed)
  host_key_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
