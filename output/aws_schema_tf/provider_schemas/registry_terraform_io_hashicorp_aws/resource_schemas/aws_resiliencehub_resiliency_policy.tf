resource "aws_resiliencehub_resiliency_policy" "name" {
  name = string (Required)
  tier = string (Required)
  arn = string (Computed)
  data_location_constraint = string (Optional, Computed)
  description = string (Optional)
  estimated_cost_tier = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  policy block "list" (Optional) {

    az block "list" (Optional) {
      rpo = string (Required)
      rto = string (Required)
    }

    hardware block "list" (Optional) {
      rpo = string (Required)
      rto = string (Required)
    }

    region block "list" (Optional) {
      rpo = string (Optional)
      rto = string (Optional)
    }

    software block "list" (Optional) {
      rpo = string (Required)
      rto = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
