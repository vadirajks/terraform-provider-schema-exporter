resource "aws_media_store_container_policy" "name" {
  container_name = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
