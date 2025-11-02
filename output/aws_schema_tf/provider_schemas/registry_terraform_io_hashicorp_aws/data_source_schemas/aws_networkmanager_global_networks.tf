data "aws_networkmanager_global_networks" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
}
