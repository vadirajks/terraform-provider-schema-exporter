data "aws_datapipeline_pipeline_definition" "name" {
  pipeline_id = string (Required)
  id = string (Optional, Computed)
  parameter_object = ['set', ['object', {'attribute': ['set', ['object', {'key': 'string', 'string_value': 'string'}]], 'id': 'string'}]] (Computed)
  pipeline_object = ['set', ['object', {'field': ['set', ['object', {'key': 'string', 'ref_value': 'string', 'string_value': 'string'}]], 'id': 'string', 'name': 'string'}]] (Computed)
  region = string (Optional, Computed)

  parameter_value block "set" (Optional) {
    id = string (Computed)
    string_value = string (Computed)
  }
}
