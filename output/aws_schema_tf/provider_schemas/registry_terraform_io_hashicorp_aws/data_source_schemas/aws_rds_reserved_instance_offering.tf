data "aws_rds_reserved_instance_offering" "name" {
  db_instance_class = string (Required)
  duration = number (Required)
  multi_az = bool (Required)
  offering_type = string (Required)
  product_description = string (Required)
  currency_code = string (Computed)
  fixed_price = number (Computed)
  id = string (Optional, Computed)
  offering_id = string (Computed)
  region = string (Optional, Computed)
}
