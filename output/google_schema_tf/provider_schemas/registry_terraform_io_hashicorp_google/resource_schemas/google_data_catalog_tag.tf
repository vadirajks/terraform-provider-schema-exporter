resource "google_data_catalog_tag" "name" {
  template = string (Required)
  column = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)
  template_displayname = string (Computed)

  fields block "set" (Required) {
    field_name = string (Required)
    bool_value = bool (Optional)
    display_name = string (Computed)
    double_value = number (Optional)
    enum_value = string (Optional)
    order = number (Computed)
    string_value = string (Optional)
    timestamp_value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
