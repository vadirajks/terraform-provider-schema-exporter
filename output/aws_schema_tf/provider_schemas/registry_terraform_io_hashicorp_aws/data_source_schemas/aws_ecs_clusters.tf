data "aws_ecs_clusters" "name" {
  cluster_arns = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
