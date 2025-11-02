data "aws_service" "name" {
  dns_name = string (Optional, Computed)
  id = string (Optional, Computed)
  partition = string (Computed)
  region = string (Optional, Computed)
  reverse_dns_name = string (Optional, Computed)
  reverse_dns_prefix = string (Optional, Computed)
  service_id = string (Optional, Computed)
  supported = bool (Computed)
}
