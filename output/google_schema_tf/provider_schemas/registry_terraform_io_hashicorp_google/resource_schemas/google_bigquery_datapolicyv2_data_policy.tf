resource "google_bigquery_datapolicyv2_data_policy" "name" {
  data_policy_id = string (Required)
  data_policy_type = string (Required)
  location = string (Required)
  etag = string (Optional, Computed)
  grantees = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  policy_tag = string (Computed)
  project = string (Optional, Computed)
  version = string (Computed)

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
