data "aws_dx_locations" "name" {
  id = string (Optional, Computed)
  location_codes = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
