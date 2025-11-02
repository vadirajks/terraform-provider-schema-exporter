data "aws_imagebuilder_distribution_configuration" "name" {
  arn = string (Required)
  date_created = string (Computed)
  date_updated = string (Computed)
  description = string (Computed)
  distribution = ['set', ['object', {'ami_distribution_configuration': ['set', ['object', {'ami_tags': ['map', 'string'], 'description': 'string', 'kms_key_id': 'string', 'launch_permission': ['set', ['object', {'organization_arns': ['set', 'string'], 'organizational_unit_arns': ['set', 'string'], 'user_groups': ['set', 'string'], 'user_ids': ['set', 'string']}]], 'name': 'string', 'target_account_ids': ['set', 'string']}]], 'container_distribution_configuration': ['set', ['object', {'container_tags': ['set', 'string'], 'description': 'string', 'target_repository': ['set', ['object', {'repository_name': 'string', 'service': 'string'}]]}]], 'fast_launch_configuration': ['set', ['object', {'account_id': 'string', 'enabled': 'bool', 'launch_template': ['set', ['object', {'launch_template_id': 'string', 'launch_template_name': 'string', 'launch_template_version': 'string'}]], 'max_parallel_launches': 'number', 'snapshot_configuration': ['set', ['object', {'target_resource_count': 'number'}]]}]], 'launch_template_configuration': ['set', ['object', {'account_id': 'string', 'default': 'bool', 'launch_template_id': 'string'}]], 'license_configuration_arns': ['set', 'string'], 'region': 'string', 's3_export_configuration': ['set', ['object', {'disk_image_format': 'string', 'role_name': 'string', 's3_bucket': 'string', 's3_prefix': 'string'}]], 'ssm_parameter_configuration': ['set', ['object', {'ami_account_id': 'string', 'data_type': 'string', 'parameter_name': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
