data "aws_mq_broker_instance_type_offerings" "name" {
  broker_instance_options = ['list', ['object', {'availability_zones': ['set', ['object', {'name': 'string'}]], 'engine_type': 'string', 'host_instance_type': 'string', 'storage_type': 'string', 'supported_deployment_modes': ['set', 'string'], 'supported_engine_versions': ['list', 'string']}]] (Computed)
  engine_type = string (Optional)
  host_instance_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  storage_type = string (Optional)
}
