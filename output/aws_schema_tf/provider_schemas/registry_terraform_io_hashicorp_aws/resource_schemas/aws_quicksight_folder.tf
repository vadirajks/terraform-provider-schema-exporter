resource "aws_quicksight_folder" "name" {
  folder_id = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  created_time = string (Computed)
  folder_path = ['list', 'string'] (Computed)
  folder_type = string (Optional)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  name = string (Optional)
  parent_folder_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  permissions block "set" (Optional) {
    actions = ['set', 'string'] (Required)
    principal = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
