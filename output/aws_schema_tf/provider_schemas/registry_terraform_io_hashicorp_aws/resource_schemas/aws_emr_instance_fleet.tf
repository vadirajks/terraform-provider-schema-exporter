resource "aws_emr_instance_fleet" "name" {
  cluster_id = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  provisioned_on_demand_capacity = number (Computed)
  provisioned_spot_capacity = number (Computed)
  region = string (Optional, Computed)
  target_on_demand_capacity = number (Optional)
  target_spot_capacity = number (Optional)

  instance_type_configs block "set" (Optional) {
    instance_type = string (Required)
    bid_price = string (Optional)
    bid_price_as_percentage_of_on_demand_price = number (Optional)
    weighted_capacity = number (Optional)

    configurations block "set" (Optional) {
      classification = string (Optional)
      properties = ['map', 'string'] (Optional)
    }

    ebs_config block "set" (Optional) {
      size = number (Required)
      type = string (Required)
      iops = number (Optional)
      volumes_per_instance = number (Optional)
    }
  }

  launch_specifications block "list" (Optional) {

    on_demand_specification block "list" (Optional) {
      allocation_strategy = string (Required)
    }

    spot_specification block "list" (Optional) {
      allocation_strategy = string (Required)
      timeout_action = string (Required)
      timeout_duration_minutes = number (Required)
      block_duration_minutes = number (Optional)
    }
  }
}
