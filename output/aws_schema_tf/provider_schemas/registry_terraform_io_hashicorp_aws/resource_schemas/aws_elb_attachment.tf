resource "aws_elb_attachment" "name" {
  elb = string (Required)
  instance = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
