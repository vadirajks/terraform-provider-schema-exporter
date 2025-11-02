data "aws_odb_networks" "name" {
  odb_networks = ['list', ['object', {'arn': 'string', 'display_name': 'string', 'id': 'string', 'oci_network_anchor_id': 'string', 'oci_vcn_id': 'string', 'oci_vcn_url': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
