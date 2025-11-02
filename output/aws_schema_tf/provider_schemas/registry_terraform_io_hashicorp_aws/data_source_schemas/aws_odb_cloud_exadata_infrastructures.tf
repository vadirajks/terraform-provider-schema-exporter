data "aws_odb_cloud_exadata_infrastructures" "name" {
  cloud_exadata_infrastructures = ['list', ['object', {'arn': 'string', 'display_name': 'string', 'id': 'string', 'oci_resource_anchor_name': 'string', 'oci_url': 'string', 'ocid': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
