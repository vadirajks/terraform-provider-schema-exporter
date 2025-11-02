resource "aws_storagegateway_gateway" "name" {
  gateway_name = string (Required)
  gateway_timezone = string (Required)
  activation_key = string (Optional, Computed)
  arn = string (Computed)
  average_download_rate_limit_in_bits_per_sec = number (Optional)
  average_upload_rate_limit_in_bits_per_sec = number (Optional)
  cloudwatch_log_group_arn = string (Optional)
  ec2_instance_id = string (Computed)
  endpoint_type = string (Computed)
  gateway_id = string (Computed)
  gateway_ip_address = string (Optional, Computed)
  gateway_network_interface = ['list', ['object', {'ipv4_address': 'string'}]] (Computed)
  gateway_type = string (Optional)
  gateway_vpc_endpoint = string (Optional)
  host_environment = string (Computed)
  id = string (Optional, Computed)
  medium_changer_type = string (Optional)
  region = string (Optional, Computed)
  smb_file_share_visibility = bool (Optional)
  smb_guest_password = string (Optional)
  smb_security_strategy = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tape_drive_type = string (Optional)

  maintenance_start_time block "list" (Optional) {
    hour_of_day = number (Required)
    day_of_month = string (Optional)
    day_of_week = string (Optional)
    minute_of_hour = number (Optional)
  }

  smb_active_directory_settings block "list" (Optional) {
    domain_name = string (Required)
    password = string (Required)
    username = string (Required)
    active_directory_status = string (Computed)
    domain_controllers = ['set', 'string'] (Optional)
    organizational_unit = string (Optional)
    timeout_in_seconds = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
