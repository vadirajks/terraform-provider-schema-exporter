data "aws_appmesh_virtual_gateway" "name" {
  mesh_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  spec = ['list', ['object', {'backend_defaults': ['list', ['object', {'client_policy': ['list', ['object', {'tls': ['list', ['object', {'certificate': ['list', ['object', {'file': ['list', ['object', {'certificate_chain': 'string', 'private_key': 'string'}]], 'sds': ['list', ['object', {'secret_name': 'string'}]]}]], 'enforce': 'bool', 'ports': ['set', 'number'], 'validation': ['list', ['object', {'subject_alternative_names': ['list', ['object', {'match': ['list', ['object', {'exact': ['set', 'string']}]]}]], 'trust': ['list', ['object', {'acm': ['list', ['object', {'certificate_authority_arns': ['set', 'string']}]], 'file': ['list', ['object', {'certificate_chain': 'string'}]], 'sds': ['list', ['object', {'secret_name': 'string'}]]}]]}]]}]]}]]}]], 'listener': ['list', ['object', {'connection_pool': ['list', ['object', {'grpc': ['list', ['object', {'max_requests': 'number'}]], 'http': ['list', ['object', {'max_connections': 'number', 'max_pending_requests': 'number'}]], 'http2': ['list', ['object', {'max_requests': 'number'}]]}]], 'health_check': ['list', ['object', {'healthy_threshold': 'number', 'interval_millis': 'number', 'path': 'string', 'port': 'number', 'protocol': 'string', 'timeout_millis': 'number', 'unhealthy_threshold': 'number'}]], 'port_mapping': ['list', ['object', {'port': 'number', 'protocol': 'string'}]], 'tls': ['list', ['object', {'certificate': ['list', ['object', {'acm': ['list', ['object', {'certificate_arn': 'string'}]], 'file': ['list', ['object', {'certificate_chain': 'string', 'private_key': 'string'}]], 'sds': ['list', ['object', {'secret_name': 'string'}]]}]], 'mode': 'string', 'validation': ['list', ['object', {'subject_alternative_names': ['list', ['object', {'match': ['list', ['object', {'exact': ['set', 'string']}]]}]], 'trust': ['list', ['object', {'file': ['list', ['object', {'certificate_chain': 'string'}]], 'sds': ['list', ['object', {'secret_name': 'string'}]]}]]}]]}]]}]], 'logging': ['list', ['object', {'access_log': ['list', ['object', {'file': ['list', ['object', {'format': ['list', ['object', {'json': ['list', ['object', {'key': 'string', 'value': 'string'}]], 'text': 'string'}]], 'path': 'string'}]]}]]}]]}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
