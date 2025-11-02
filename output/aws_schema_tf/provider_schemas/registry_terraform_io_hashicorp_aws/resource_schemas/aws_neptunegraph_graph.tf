resource "aws_neptunegraph_graph" "name" {
  provisioned_memory = number (Required)
  arn = string (Computed)
  deletion_protection = bool (Optional, Computed)
  endpoint = string (Computed)
  graph_name = string (Optional, Computed)
  graph_name_prefix = string (Optional)
  id = string (Computed)
  kms_key_identifier = string (Optional, Computed)
  public_connectivity = bool (Optional, Computed)
  region = string (Optional, Computed)
  replica_count = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vector_search_configuration block "list" (Optional) {
    vector_search_dimension = number (Optional)
  }
}
