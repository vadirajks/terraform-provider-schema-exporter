resource "aws_verifiedaccess_instance_trust_provider_attachment" "name" {
  verifiedaccess_instance_id = string (Required)
  verifiedaccess_trust_provider_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
