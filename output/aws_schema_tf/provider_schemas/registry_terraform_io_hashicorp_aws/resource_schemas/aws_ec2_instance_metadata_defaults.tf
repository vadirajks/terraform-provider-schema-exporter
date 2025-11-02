resource "aws_ec2_instance_metadata_defaults" "name" {
  http_endpoint = string (Optional, Computed)
  http_put_response_hop_limit = number (Optional, Computed)
  http_tokens = string (Optional, Computed)
  id = string (Computed)
  instance_metadata_tags = string (Optional, Computed)
  region = string (Optional, Computed)
}
