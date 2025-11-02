data "aws_partition" "name" {
  dns_suffix = string (Computed)
  id = string (Optional, Computed)
  partition = string (Computed)
  reverse_dns_prefix = string (Computed)
}
