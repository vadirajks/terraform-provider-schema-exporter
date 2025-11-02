resource "google_endpoints_service" "name" {
  service_name = string (Required)
  apis = ['list', ['object', {'methods': ['list', ['object', {'name': 'string', 'request_type': 'string', 'response_type': 'string', 'syntax': 'string'}]], 'name': 'string', 'syntax': 'string', 'version': 'string'}]] (Computed)
  config_id = string (Computed)
  dns_address = string (Computed)
  endpoints = ['list', ['object', {'address': 'string', 'name': 'string'}]] (Computed)
  grpc_config = string (Optional)
  id = string (Optional, Computed)
  openapi_config = string (Optional)
  project = string (Optional, Computed)
  protoc_output_base64 = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
