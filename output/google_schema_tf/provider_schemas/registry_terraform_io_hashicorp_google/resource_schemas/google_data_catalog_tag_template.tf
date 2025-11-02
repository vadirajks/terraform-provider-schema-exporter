resource "google_data_catalog_tag_template" "name" {
  tag_template_id = string (Required)
  display_name = string (Optional)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  fields block "set" (Required) {
    field_id = string (Required)
    description = string (Optional, Computed)
    display_name = string (Optional, Computed)
    is_required = bool (Optional, Computed)
    name = string (Computed)
    order = number (Optional, Computed)

    type block "list" (Required) {
      primitive_type = string (Optional, Computed)

      enum_type block "list" (Optional) {

        allowed_values block "set" (Required) {
          display_name = string (Required)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
