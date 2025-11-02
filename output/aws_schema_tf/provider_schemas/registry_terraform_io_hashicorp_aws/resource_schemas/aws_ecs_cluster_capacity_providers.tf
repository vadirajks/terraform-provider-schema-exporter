resource "aws_ecs_cluster_capacity_providers" "name" {
  cluster_name = string (Required)
  capacity_providers = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  default_capacity_provider_strategy block "set" (Optional) {
    capacity_provider = string (Required)
    base = number (Optional)
    weight = number (Optional)
  }
}
