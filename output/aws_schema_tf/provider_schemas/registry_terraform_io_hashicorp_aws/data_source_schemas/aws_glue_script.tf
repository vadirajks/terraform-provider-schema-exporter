data "aws_glue_script" "name" {
  id = string (Optional, Computed)
  language = string (Optional)
  python_script = string (Computed)
  region = string (Optional, Computed)
  scala_code = string (Computed)

  dag_edge block "list" (Required) {
    source = string (Required)
    target = string (Required)
    target_parameter = string (Optional)
  }

  dag_node block "list" (Required) {
    id = string (Required)
    node_type = string (Required)
    line_number = number (Optional)

    args block "list" (Required) {
      name = string (Required)
      value = string (Required)
      param = bool (Optional)
    }
  }
}
