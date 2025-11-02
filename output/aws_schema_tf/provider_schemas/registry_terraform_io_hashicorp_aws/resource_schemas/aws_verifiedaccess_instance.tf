resource "aws_verifiedaccess_instance" "name" {
  cidr_endpoints_custom_subdomain = string (Optional)
  creation_time = string (Computed)
  description = string (Optional)
  fips_enabled = bool (Optional)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  name_servers = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  verified_access_trust_providers = ['list', ['object', {'description': 'string', 'device_trust_provider_type': 'string', 'trust_provider_type': 'string', 'user_trust_provider_type': 'string', 'verified_access_trust_provider_id': 'string'}]] (Computed)
}
