resource "aws_emr_managed_scaling_policy" "name" {
  cluster_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  compute_limits block "set" (Required) {
    maximum_capacity_units = number (Required)
    minimum_capacity_units = number (Required)
    unit_type = string (Required)
    maximum_core_capacity_units = number (Optional)
    maximum_ondemand_capacity_units = number (Optional)
  }
}
