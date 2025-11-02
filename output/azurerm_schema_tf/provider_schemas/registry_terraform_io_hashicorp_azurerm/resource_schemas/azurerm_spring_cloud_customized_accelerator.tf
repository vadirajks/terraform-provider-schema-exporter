resource "azurerm_spring_cloud_customized_accelerator" "name" {
  name = string (Required)
  spring_cloud_accelerator_id = string (Required)
  accelerator_tags = ['list', 'string'] (Optional)
  accelerator_type = string (Optional)
  description = string (Optional)
  display_name = string (Optional)
  icon_url = string (Optional)
  id = string (Optional, Computed)

  git_repository block "list" (Required) {
    url = string (Required)
    branch = string (Optional)
    ca_certificate_id = string (Optional)
    commit = string (Optional)
    git_tag = string (Optional)
    interval_in_seconds = number (Optional)
    path = string (Optional)

    basic_auth block "list" (Optional) {
      password = string (Required)
      username = string (Required)
    }

    ssh_auth block "list" (Optional) {
      private_key = string (Required)
      host_key = string (Optional)
      host_key_algorithm = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
