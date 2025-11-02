resource "aws_redshift_cluster_iam_roles" "name" {
  cluster_identifier = string (Required)
  default_iam_role_arn = string (Optional, Computed)
  iam_role_arns = ['set', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
