resource "azurerm_sentinel_metadata" "name" {
  content_id = string (Required)
  kind = string (Required)
  name = string (Required)
  parent_id = string (Required)
  workspace_id = string (Required)
  content_schema_version = string (Optional)
  custom_version = string (Optional)
  dependency = string (Optional)
  first_publish_date = string (Optional)
  icon_id = string (Optional)
  id = string (Optional, Computed)
  last_publish_date = string (Optional)
  preview_images = ['list', 'string'] (Optional)
  preview_images_dark = ['list', 'string'] (Optional)
  providers = ['list', 'string'] (Optional)
  threat_analysis_tactics = ['list', 'string'] (Optional)
  threat_analysis_techniques = ['list', 'string'] (Optional)
  version = string (Optional)

  author block "list" (Optional) {
    email = string (Optional)
    link = string (Optional)
    name = string (Optional)
  }

  category block "list" (Optional) {
    domains = ['list', 'string'] (Optional)
    verticals = ['list', 'string'] (Optional)
  }

  source block "list" (Optional) {
    kind = string (Required)
    id = string (Optional)
    name = string (Optional)
  }

  support block "list" (Optional) {
    tier = string (Required)
    email = string (Optional)
    link = string (Optional)
    name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
