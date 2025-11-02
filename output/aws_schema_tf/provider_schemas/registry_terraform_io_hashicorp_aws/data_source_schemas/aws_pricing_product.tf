data "aws_pricing_product" "name" {
  service_code = string (Required)
  id = string (Optional, Computed)
  result = string (Computed)

  filters block "list" (Required) {
    field = string (Required)
    value = string (Required)
  }
}
