resource "aws_pinpointsmsvoicev2_phone_number" "name" {
  iso_country_code = string (Required)
  message_type = string (Required)
  number_capabilities = ['set', 'string'] (Required)
  number_type = string (Required)
  arn = string (Computed)
  deletion_protection_enabled = bool (Optional, Computed)
  id = string (Computed)
  monthly_leasing_price = string (Computed)
  opt_out_list_name = string (Optional, Computed)
  phone_number = string (Computed)
  region = string (Optional, Computed)
  registration_id = string (Optional)
  self_managed_opt_outs_enabled = bool (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  two_way_channel_arn = string (Optional)
  two_way_channel_enabled = bool (Optional, Computed)
  two_way_channel_role = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
