resource "aws_devicefarm_test_grid_project" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
