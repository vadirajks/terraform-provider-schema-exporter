resource "aws_bedrockagent_agent_action_group" "name" {
  action_group_name = string (Required)
  agent_id = string (Required)
  agent_version = string (Required)
  action_group_id = string (Computed)
  action_group_state = string (Optional, Computed)
  description = string (Optional)
  id = string (Computed)
  parent_action_group_signature = string (Optional)
  prepare_agent = bool (Optional, Computed)
  region = string (Optional, Computed)
  skip_resource_in_use_check = bool (Optional, Computed)

  action_group_executor block "list" (Optional) {
    custom_control = string (Optional)
    lambda = string (Optional)
  }

  api_schema block "list" (Optional) {
    payload = string (Optional)

    s3 block "list" (Optional) {
      s3_bucket_name = string (Optional)
      s3_object_key = string (Optional)
    }
  }

  function_schema block "list" (Optional) {

    member_functions block "list" (Optional) {

      functions block "list" (Optional) {
        name = string (Required)
        description = string (Optional)

        parameters block "set" (Optional) {
          map_block_key = string (Required)
          type = string (Required)
          description = string (Optional)
          required = bool (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
