resource "aws_servicecatalog_tag_option" "name" {
  key = string (Required)
  value = string (Required)
  active = bool (Optional)
  id = string (Optional, Computed)
  owner = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
