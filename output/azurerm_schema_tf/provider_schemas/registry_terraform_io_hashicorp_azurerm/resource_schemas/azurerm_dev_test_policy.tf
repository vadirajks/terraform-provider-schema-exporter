resource "azurerm_dev_test_policy" "name" {
  evaluator_type = string (Required)
  lab_name = string (Required)
  name = string (Required)
  policy_set_name = string (Required)
  resource_group_name = string (Required)
  threshold = string (Required)
  description = string (Optional)
  fact_data = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
