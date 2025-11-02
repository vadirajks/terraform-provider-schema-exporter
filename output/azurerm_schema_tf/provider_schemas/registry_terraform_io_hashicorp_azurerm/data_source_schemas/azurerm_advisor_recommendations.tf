data "azurerm_advisor_recommendations" "name" {
  filter_by_category = ['set', 'string'] (Optional)
  filter_by_resource_groups = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  recommendations = ['list', ['object', {'category': 'string', 'description': 'string', 'impact': 'string', 'recommendation_name': 'string', 'recommendation_type_id': 'string', 'resource_name': 'string', 'resource_type': 'string', 'suppression_names': ['set', 'string'], 'updated_time': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
