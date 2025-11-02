resource "google_bigquery_datapolicy_data_policy" "name" {
  data_policy_id = string (Required)
  data_policy_type = string (Required)
  location = string (Required)
  policy_tag = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  data_masking_policy block "list" (Optional) {
    predefined_expression = string (Optional)
    routine = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
