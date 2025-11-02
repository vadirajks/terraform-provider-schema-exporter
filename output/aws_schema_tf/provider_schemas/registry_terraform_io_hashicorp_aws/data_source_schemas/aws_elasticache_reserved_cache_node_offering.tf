data "aws_elasticache_reserved_cache_node_offering" "name" {
  cache_node_type = string (Required)
  duration = string (Required)
  offering_type = string (Required)
  product_description = string (Required)
  fixed_price = number (Computed)
  offering_id = string (Computed)
  region = string (Optional, Computed)
}
