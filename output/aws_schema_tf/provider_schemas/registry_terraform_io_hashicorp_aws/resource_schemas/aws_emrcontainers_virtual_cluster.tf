resource "aws_emrcontainers_virtual_cluster" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  container_provider block "list" (Required) {
    id = string (Required)
    type = string (Required)

    info block "list" (Required) {

      eks_info block "list" (Required) {
        namespace = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
