data "aws_resourceexplorer2_search" "name" {
  query_string = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  resource_count = ['list', ['object', {'complete': 'bool', 'total_resources': 'number'}]] (Computed)
  resources = ['list', ['object', {'arn': 'string', 'last_reported_at': 'string', 'owning_account_id': 'string', 'properties': ['list', ['object', {'data': 'string', 'last_reported_at': 'string', 'name': 'string'}]], 'region': 'string', 'resource_type': 'string', 'service': 'string'}]] (Computed)
  view_arn = string (Optional, Computed)
}
