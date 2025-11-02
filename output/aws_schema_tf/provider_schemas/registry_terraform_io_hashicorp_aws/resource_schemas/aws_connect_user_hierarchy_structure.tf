resource "aws_connect_user_hierarchy_structure" "name" {
  instance_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  hierarchy_structure block "list" (Required) {

    level_five block "list" (Optional) {
      name = string (Required)
      arn = string (Computed)
      id = string (Computed)
    }

    level_four block "list" (Optional) {
      name = string (Required)
      arn = string (Computed)
      id = string (Computed)
    }

    level_one block "list" (Optional) {
      name = string (Required)
      arn = string (Computed)
      id = string (Computed)
    }

    level_three block "list" (Optional) {
      name = string (Required)
      arn = string (Computed)
      id = string (Computed)
    }

    level_two block "list" (Optional) {
      name = string (Required)
      arn = string (Computed)
      id = string (Computed)
    }
  }
}
