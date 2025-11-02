data "aws_emr_release_labels" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  release_labels = ['list', 'string'] (Computed)

  filters block "list" (Optional) {
    application = string (Optional)
    prefix = string (Optional)
  }
}
