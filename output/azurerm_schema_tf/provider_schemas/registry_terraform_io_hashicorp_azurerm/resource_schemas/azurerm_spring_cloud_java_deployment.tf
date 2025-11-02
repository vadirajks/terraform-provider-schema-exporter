resource "azurerm_spring_cloud_java_deployment" "name" {
  name = string (Required)
  spring_cloud_app_id = string (Required)
  environment_variables = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  jvm_options = string (Optional)
  runtime_version = string (Optional)

  quota block "list" (Optional) {
    cpu = string (Optional, Computed)
    memory = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
