data "aws_codeguruprofiler_profiling_group" "name" {
  name = string (Required)
  agent_orchestration_config = ['list', ['object', {'profiling_enabled': 'bool'}]] (Computed)
  arn = string (Computed)
  compute_platform = string (Computed)
  created_at = string (Computed)
  id = string (Computed)
  profiling_status = ['list', ['object', {'latest_agent_orchestrated_at': 'string', 'latest_agent_profile_reported_at': 'string', 'latest_aggregated_profile': ['list', ['object', {'period': 'string', 'start': 'string'}]]}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  updated_at = string (Computed)
}
