resource "google_vertex_ai_featurestore_entitytype" "name" {
  featurestore = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional)
  region = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  monitoring_config block "list" (Optional) {

    categorical_threshold_config block "list" (Optional) {
      value = number (Required)
    }

    import_features_analysis block "list" (Optional) {
      anomaly_detection_baseline = string (Optional)
      state = string (Optional)
    }

    numerical_threshold_config block "list" (Optional) {
      value = number (Required)
    }

    snapshot_analysis block "list" (Optional) {
      disabled = bool (Optional)
      monitoring_interval_days = number (Optional)
      staleness_days = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
