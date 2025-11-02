resource "aws_ecr_replication_configuration" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)

  replication_configuration block "list" (Optional) {

    rule block "list" (Required) {

      destination block "list" (Required) {
        region = string (Required)
        registry_id = string (Required)
      }

      repository_filter block "list" (Optional) {
        filter = string (Required)
        filter_type = string (Required)
      }
    }
  }
}
