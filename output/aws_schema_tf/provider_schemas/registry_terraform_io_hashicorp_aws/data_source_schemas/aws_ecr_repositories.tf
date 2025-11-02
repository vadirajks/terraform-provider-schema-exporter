data "aws_ecr_repositories" "name" {
  id = string (Computed)
  names = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
