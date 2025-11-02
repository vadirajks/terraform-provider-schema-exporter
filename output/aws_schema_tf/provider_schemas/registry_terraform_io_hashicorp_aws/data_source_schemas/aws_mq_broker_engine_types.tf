data "aws_mq_broker_engine_types" "name" {
  broker_engine_types = ['list', ['object', {'engine_type': 'string', 'engine_versions': ['list', ['object', {'name': 'string'}]]}]] (Computed)
  engine_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
