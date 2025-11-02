resource "google_blockchain_node_engine_blockchain_nodes" "name" {
  blockchain_node_id = string (Required)
  location = string (Required)
  blockchain_type = string (Optional)
  connection_info = ['list', ['object', {'endpoint_info': ['list', ['object', {'json_rpc_api_endpoint': 'string', 'websockets_api_endpoint': 'string'}]], 'service_attachment': 'string'}]] (Computed)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  ethereum_details block "list" (Optional) {
    additional_endpoints = ['list', ['object', {'beacon_api_endpoint': 'string', 'beacon_prometheus_metrics_api_endpoint': 'string', 'execution_client_prometheus_metrics_api_endpoint': 'string'}]] (Computed)
    api_enable_admin = bool (Optional)
    api_enable_debug = bool (Optional)
    consensus_client = string (Optional)
    execution_client = string (Optional)
    network = string (Optional)
    node_type = string (Optional)

    geth_details block "list" (Optional) {
      garbage_collection_mode = string (Optional)
    }

    validator_config block "list" (Optional) {
      mev_relay_urls = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
