resource "aws_vpclattice_access_log_subscription" "name" {
  destination_arn = string (Required)
  resource_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
  service_network_log_type = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
