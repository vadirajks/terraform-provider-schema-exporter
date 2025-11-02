resource "aws_simpledb_domain" "name" {
  name = string (Required)
  id = string (Computed)
}
