resource "aws_datapipeline_pipeline_definition" "name" {
  pipeline_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  parameter_object block "set" (Optional) {
    id = string (Required)

    attribute block "set" (Optional) {
      key = string (Required)
      string_value = string (Required)
    }
  }

  parameter_value block "set" (Optional) {
    id = string (Required)
    string_value = string (Required)
  }

  pipeline_object block "set" (Required) {
    id = string (Required)
    name = string (Required)

    field block "set" (Optional) {
      key = string (Required)
      ref_value = string (Optional)
      string_value = string (Optional)
    }
  }
}
