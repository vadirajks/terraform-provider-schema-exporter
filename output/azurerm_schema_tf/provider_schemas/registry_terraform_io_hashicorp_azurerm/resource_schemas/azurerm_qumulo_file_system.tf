resource "azurerm_qumulo_file_system" "name" {
  admin_password = string (Required)
  email = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_sku = string (Required)
  subnet_id = string (Required)
  zone = string (Required)
  id = string (Optional, Computed)
  offer_id = string (Optional)
  plan_id = string (Optional)
  publisher_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
