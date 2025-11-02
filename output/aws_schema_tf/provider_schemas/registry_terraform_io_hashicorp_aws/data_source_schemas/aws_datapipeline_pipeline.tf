data "aws_datapipeline_pipeline" "name" {
  pipeline_id = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
