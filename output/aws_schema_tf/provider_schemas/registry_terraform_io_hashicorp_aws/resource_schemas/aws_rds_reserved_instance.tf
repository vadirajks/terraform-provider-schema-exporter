resource "aws_rds_reserved_instance" "name" {
  offering_id = string (Required)
  arn = string (Computed)
  currency_code = string (Computed)
  db_instance_class = string (Computed)
  duration = number (Computed)
  fixed_price = number (Computed)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  lease_id = string (Computed)
  multi_az = bool (Computed)
  offering_type = string (Computed)
  product_description = string (Computed)
  recurring_charges = ['list', ['object', {'recurring_charge_amount': 'number', 'recurring_charge_frequency': 'string'}]] (Computed)
  region = string (Optional, Computed)
  reservation_id = string (Optional)
  start_time = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  usage_price = number (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
