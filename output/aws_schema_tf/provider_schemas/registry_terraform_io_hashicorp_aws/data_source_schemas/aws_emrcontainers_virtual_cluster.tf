data "aws_emrcontainers_virtual_cluster" "name" {
  virtual_cluster_id = string (Required)
  arn = string (Computed)
  container_provider = ['list', ['object', {'id': 'string', 'info': ['list', ['object', {'eks_info': ['list', ['object', {'namespace': 'string'}]]}]], 'type': 'string'}]] (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
