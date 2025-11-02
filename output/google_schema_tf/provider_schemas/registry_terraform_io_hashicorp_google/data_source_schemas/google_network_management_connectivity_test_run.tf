data "google_network_management_connectivity_test_run" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reachability_details = ['list', ['object', {'result': 'string', 'traces': ['list', ['object', {'endpoint_info': ['list', ['object', {'destination_ip': 'string', 'destination_network_uri': 'string', 'destination_port': 'number', 'protocol': 'string', 'source_agent_uri': 'string', 'source_ip': 'string', 'source_network_uri': 'string', 'source_port': 'number'}]], 'forward_trace_id': 'number', 'steps': ['list', ['object', {'causes_drop': 'bool', 'description': 'string', 'project_id': 'string', 'state': 'string'}]]}]], 'verify_time': 'string'}]] (Computed)
}
