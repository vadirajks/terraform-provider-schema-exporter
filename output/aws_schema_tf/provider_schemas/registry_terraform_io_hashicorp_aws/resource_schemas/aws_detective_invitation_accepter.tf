resource "aws_detective_invitation_accepter" "name" {
  graph_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
