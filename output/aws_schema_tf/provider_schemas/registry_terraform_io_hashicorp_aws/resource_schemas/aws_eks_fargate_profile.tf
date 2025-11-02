resource "aws_eks_fargate_profile" "name" {
  cluster_name = string (Required)
  fargate_profile_name = string (Required)
  pod_execution_role_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  subnet_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  selector block "set" (Required) {
    namespace = string (Required)
    labels = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
