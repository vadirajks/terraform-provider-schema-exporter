data "aws_msk_broker_nodes" "name" {
  cluster_arn = string (Required)
  id = string (Optional, Computed)
  node_info_list = ['list', ['object', {'attached_eni_id': 'string', 'broker_id': 'number', 'client_subnet': 'string', 'client_vpc_ip_address': 'string', 'endpoints': ['set', 'string'], 'node_arn': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
