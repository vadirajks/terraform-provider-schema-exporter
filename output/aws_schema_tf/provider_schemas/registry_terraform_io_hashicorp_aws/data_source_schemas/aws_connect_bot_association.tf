data "aws_connect_bot_association" "name" {
  instance_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  lex_bot block "list" (Required) {
    name = string (Required)
    lex_region = string (Optional, Computed)
  }
}
