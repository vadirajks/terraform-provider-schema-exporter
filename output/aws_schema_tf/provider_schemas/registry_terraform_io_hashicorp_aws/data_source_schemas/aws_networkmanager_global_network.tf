data "aws_networkmanager_global_network" "name" {
  global_network_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
