data "aws_odb_cloud_vm_clusters" "name" {
  cloud_vm_clusters = ['list', ['object', {'arn': 'string', 'cloud_exadata_infrastructure_id': 'string', 'display_name': 'string', 'id': 'string', 'oci_resource_anchor_name': 'string', 'oci_url': 'string', 'ocid': 'string', 'odb_network_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
