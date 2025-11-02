resource "aws_redshift_scheduled_action" "name" {
  iam_role = string (Required)
  name = string (Required)
  schedule = string (Required)
  description = string (Optional)
  enable = bool (Optional)
  end_time = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  start_time = string (Optional)

  target_action block "list" (Required) {

    pause_cluster block "list" (Optional) {
      cluster_identifier = string (Required)
    }

    resize_cluster block "list" (Optional) {
      cluster_identifier = string (Required)
      classic = bool (Optional)
      cluster_type = string (Optional)
      node_type = string (Optional)
      number_of_nodes = number (Optional)
    }

    resume_cluster block "list" (Optional) {
      cluster_identifier = string (Required)
    }
  }
}
