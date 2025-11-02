resource "aws_sesv2_configuration_set_event_destination" "name" {
  configuration_set_name = string (Required)
  event_destination_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  event_destination block "list" (Required) {
    matching_event_types = ['set', 'string'] (Required)
    enabled = bool (Optional)

    cloud_watch_destination block "list" (Optional) {

      dimension_configuration block "list" (Required) {
        default_dimension_value = string (Required)
        dimension_name = string (Required)
        dimension_value_source = string (Required)
      }
    }

    event_bridge_destination block "list" (Optional) {
      event_bus_arn = string (Required)
    }

    kinesis_firehose_destination block "list" (Optional) {
      delivery_stream_arn = string (Required)
      iam_role_arn = string (Required)
    }

    pinpoint_destination block "list" (Optional) {
      application_arn = string (Required)
    }

    sns_destination block "list" (Optional) {
      topic_arn = string (Required)
    }
  }
}
