resource "aws_elasticache_reserved_cache_node" "name" {
  reserved_cache_nodes_offering_id = string (Required)
  arn = string (Computed)
  cache_node_count = number (Optional, Computed)
  cache_node_type = string (Computed)
  duration = string (Computed)
  fixed_price = number (Computed)
  id = string (Optional, Computed)
  offering_type = string (Computed)
  product_description = string (Computed)
  recurring_charges = ['list', ['object', {'recurring_charge_amount': 'number', 'recurring_charge_frequency': 'string'}]] (Computed)
  region = string (Optional, Computed)
  start_time = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  usage_price = number (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
