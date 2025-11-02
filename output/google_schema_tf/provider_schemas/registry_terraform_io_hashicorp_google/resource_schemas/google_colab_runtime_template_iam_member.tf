resource "google_colab_runtime_template_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  runtime_template = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
