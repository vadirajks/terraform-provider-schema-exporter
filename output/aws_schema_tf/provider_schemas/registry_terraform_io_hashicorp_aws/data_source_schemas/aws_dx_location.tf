data "aws_dx_location" "name" {
  location_code = string (Required)
  available_macsec_port_speeds = ['list', 'string'] (Computed)
  available_port_speeds = ['list', 'string'] (Computed)
  available_providers = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  location_name = string (Computed)
  region = string (Optional, Computed)
}
