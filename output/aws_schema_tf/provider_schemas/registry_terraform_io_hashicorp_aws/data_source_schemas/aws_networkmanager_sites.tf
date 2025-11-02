data "aws_networkmanager_sites" "name" {
  global_network_id = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
}
