resource "google_dataplex_entry" "name" {
  entry_type = string (Required)
  create_time = string (Computed)
  entry_group_id = string (Optional)
  entry_id = string (Optional)
  fully_qualified_name = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  parent_entry = string (Optional)
  project = string (Optional, Computed)
  update_time = string (Computed)

  aspects block "list" (Optional) {
    aspect_key = string (Required)

    aspect block "list" (Required) {
      data = string (Required)
      aspect_type = string (Computed)
      create_time = string (Computed)
      path = string (Computed)
      update_time = string (Computed)
    }
  }

  entry_source block "list" (Optional) {
    create_time = string (Optional)
    description = string (Optional)
    display_name = string (Optional)
    labels = ['map', 'string'] (Optional)
    location = string (Computed)
    platform = string (Optional)
    resource = string (Optional)
    system = string (Optional)
    update_time = string (Optional)

    ancestors block "list" (Optional) {
      name = string (Optional)
      type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
