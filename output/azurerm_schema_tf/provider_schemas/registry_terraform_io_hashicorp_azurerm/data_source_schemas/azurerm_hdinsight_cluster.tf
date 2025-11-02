data "azurerm_hdinsight_cluster" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  cluster_id = string (Computed)
  cluster_version = string (Computed)
  component_versions = ['map', 'string'] (Computed)
  edge_ssh_endpoint = string (Computed)
  gateway = ['list', ['object', {'enabled': 'bool', 'password': 'string', 'username': 'string'}]] (Computed)
  https_endpoint = string (Computed)
  id = string (Optional, Computed)
  kafka_rest_proxy_endpoint = string (Computed)
  kind = string (Computed)
  location = string (Computed)
  ssh_endpoint = string (Computed)
  tags = ['map', 'string'] (Computed)
  tier = string (Computed)
  tls_min_version = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
