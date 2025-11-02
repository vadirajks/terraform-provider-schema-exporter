data "aws_servicequotas_templates" "name" {
  aws_region = string (Optional)
  id = string (Computed)
  region = string (Optional)
  templates = ['list', ['object', {'global_quota': 'bool', 'quota_code': 'string', 'quota_name': 'string', 'region': 'string', 'service_code': 'string', 'service_name': 'string', 'unit': 'string', 'value': 'number'}]] (Computed)
}
