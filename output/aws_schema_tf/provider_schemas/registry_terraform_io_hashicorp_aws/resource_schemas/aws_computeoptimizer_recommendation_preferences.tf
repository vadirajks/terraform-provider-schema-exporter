resource "aws_computeoptimizer_recommendation_preferences" "name" {
  resource_type = string (Required)
  enhanced_infrastructure_metrics = string (Optional)
  id = string (Computed)
  inferred_workload_types = string (Optional)
  look_back_period = string (Optional, Computed)
  region = string (Optional, Computed)
  savings_estimation_mode = string (Optional)

  external_metrics_preference block "list" (Optional) {
    source = string (Required)
  }

  preferred_resource block "list" (Optional) {
    name = string (Required)
    exclude_list = ['set', 'string'] (Optional)
    include_list = ['set', 'string'] (Optional)
  }

  scope block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  utilization_preference block "list" (Optional) {
    metric_name = string (Required)

    metric_parameters block "list" (Optional) {
      headroom = string (Required)
      threshold = string (Optional)
    }
  }
}
