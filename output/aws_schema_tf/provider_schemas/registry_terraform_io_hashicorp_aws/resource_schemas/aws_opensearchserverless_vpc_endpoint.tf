resource "aws_opensearchserverless_vpc_endpoint" "name" {
  name = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  vpc_id = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
