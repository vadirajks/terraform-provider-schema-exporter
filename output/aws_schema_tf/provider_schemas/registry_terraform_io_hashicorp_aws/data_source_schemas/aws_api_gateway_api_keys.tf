data "aws_api_gateway_api_keys" "name" {
  customer_id = string (Optional)
  id = string (Computed)
  include_values = bool (Optional)
  items = ['list', ['object', {'created_date': 'string', 'customer_id': 'string', 'description': 'string', 'enabled': 'bool', 'id': 'string', 'last_updated_date': 'string', 'name': 'string', 'stage_keys': ['list', 'string'], 'tags': ['map', 'string'], 'value': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
