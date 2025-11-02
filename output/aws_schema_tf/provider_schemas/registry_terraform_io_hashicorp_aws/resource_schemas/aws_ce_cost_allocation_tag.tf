resource "aws_ce_cost_allocation_tag" "name" {
  status = string (Required)
  tag_key = string (Required)
  id = string (Optional, Computed)
  type = string (Computed)
}
