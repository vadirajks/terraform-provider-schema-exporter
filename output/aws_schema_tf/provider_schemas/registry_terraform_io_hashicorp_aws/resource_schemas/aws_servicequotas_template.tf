resource "aws_servicequotas_template" "name" {
  quota_code = string (Required)
  service_code = string (Required)
  value = number (Required)
  aws_region = string (Optional, Computed)
  global_quota = bool (Computed)
  id = string (Computed)
  quota_name = string (Computed)
  region = string (Optional, Computed)
  service_name = string (Computed)
  unit = string (Computed)
}
