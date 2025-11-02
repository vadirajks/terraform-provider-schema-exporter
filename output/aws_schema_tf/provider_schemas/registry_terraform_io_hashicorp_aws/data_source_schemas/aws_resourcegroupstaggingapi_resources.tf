data "aws_resourcegroupstaggingapi_resources" "name" {
  exclude_compliant_resources = bool (Optional)
  id = string (Optional, Computed)
  include_compliance_details = bool (Optional)
  region = string (Optional, Computed)
  resource_arn_list = ['set', 'string'] (Optional)
  resource_tag_mapping_list = ['list', ['object', {'compliance_details': ['list', ['object', {'compliance_status': 'bool', 'keys_with_noncompliant_values': ['set', 'string'], 'non_compliant_keys': ['set', 'string']}]], 'resource_arn': 'string', 'tags': ['map', 'string']}]] (Computed)
  resource_type_filters = ['set', 'string'] (Optional)

  tag_filter block "list" (Optional) {
    key = string (Required)
    values = ['set', 'string'] (Optional)
  }
}
