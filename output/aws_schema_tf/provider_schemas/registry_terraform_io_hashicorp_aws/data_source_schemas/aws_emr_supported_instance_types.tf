data "aws_emr_supported_instance_types" "name" {
  release_label = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  supported_instance_types = ['list', ['object', {'architecture': 'string', 'ebs_optimized_available': 'bool', 'ebs_optimized_by_default': 'bool', 'ebs_storage_only': 'bool', 'instance_family_id': 'string', 'is_64_bits_only': 'bool', 'memory_gb': 'number', 'number_of_disks': 'number', 'storage_gb': 'number', 'type': 'string', 'vcpu': 'number'}]] (Computed)
}
