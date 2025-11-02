resource "google_logging_metric" "name" {
  filter = string (Required)
  name = string (Required)
  bucket_name = string (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  label_extractors = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  value_extractor = string (Optional)

  bucket_options block "list" (Optional) {

    explicit_buckets block "list" (Optional) {
      bounds = ['list', 'number'] (Required)
    }

    exponential_buckets block "list" (Optional) {
      growth_factor = number (Required)
      num_finite_buckets = number (Required)
      scale = number (Required)
    }

    linear_buckets block "list" (Optional) {
      num_finite_buckets = number (Required)
      offset = number (Required)
      width = number (Required)
    }
  }

  metric_descriptor block "list" (Optional) {
    metric_kind = string (Required)
    value_type = string (Required)
    display_name = string (Optional)
    unit = string (Optional)

    labels block "set" (Optional) {
      key = string (Required)
      description = string (Optional)
      value_type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
