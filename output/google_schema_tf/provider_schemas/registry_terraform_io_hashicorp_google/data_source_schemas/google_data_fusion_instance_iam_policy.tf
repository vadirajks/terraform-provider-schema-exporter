data "google_data_fusion_instance_iam_policy" "name" {
  name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
