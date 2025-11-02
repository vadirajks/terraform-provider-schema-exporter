resource "aws_paymentcryptography_key" "name" {
  exportable = bool (Required)
  arn = string (Computed)
  deletion_window_in_days = number (Optional, Computed)
  enabled = bool (Optional, Computed)
  id = string (Computed)
  key_check_value = string (Computed)
  key_check_value_algorithm = string (Optional, Computed)
  key_origin = string (Computed)
  key_state = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  key_attributes block "list" (Optional) {
    key_algorithm = string (Required)
    key_class = string (Required)
    key_usage = string (Required)

    key_modes_of_use block "list" (Optional) {
      decrypt = bool (Optional, Computed)
      derive_key = bool (Optional, Computed)
      encrypt = bool (Optional, Computed)
      generate = bool (Optional, Computed)
      no_restrictions = bool (Optional, Computed)
      sign = bool (Optional, Computed)
      unwrap = bool (Optional, Computed)
      verify = bool (Optional, Computed)
      wrap = bool (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
