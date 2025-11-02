resource "google_colab_runtime_template_iam_policy" "name" {
  policy_data = string (Required)
  runtime_template = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
