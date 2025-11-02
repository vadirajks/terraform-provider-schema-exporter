resource "aws_codeguruprofiler_profiling_group" "name" {
  name = string (Required)
  arn = string (Computed)
  compute_platform = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  agent_orchestration_config block "list" (Optional) {
    profiling_enabled = bool (Required)
  }
}
