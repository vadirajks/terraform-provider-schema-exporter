resource "aws_flow_log" "name" {
  arn = string (Computed)
  deliver_cross_account_role = string (Optional)
  eni_id = string (Optional)
  iam_role_arn = string (Optional)
  id = string (Optional, Computed)
  log_destination = string (Optional, Computed)
  log_destination_type = string (Optional)
  log_format = string (Optional, Computed)
  max_aggregation_interval = number (Optional)
  region = string (Optional, Computed)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  traffic_type = string (Optional)
  transit_gateway_attachment_id = string (Optional)
  transit_gateway_id = string (Optional)
  vpc_id = string (Optional)

  destination_options block "list" (Optional) {
    file_format = string (Optional)
    hive_compatible_partitions = bool (Optional)
    per_hour_partition = bool (Optional)
  }
}
