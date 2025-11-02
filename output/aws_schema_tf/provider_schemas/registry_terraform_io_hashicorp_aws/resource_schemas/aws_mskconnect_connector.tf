resource "aws_mskconnect_connector" "name" {
  connector_configuration = ['map', 'string'] (Required)
  kafkaconnect_version = string (Required)
  name = string (Required)
  service_execution_role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Computed)

  capacity block "list" (Required) {

    autoscaling block "list" (Optional) {
      max_worker_count = number (Required)
      min_worker_count = number (Required)
      mcu_count = number (Optional)

      scale_in_policy block "list" (Optional) {
        cpu_utilization_percentage = number (Optional, Computed)
      }

      scale_out_policy block "list" (Optional) {
        cpu_utilization_percentage = number (Optional, Computed)
      }
    }

    provisioned_capacity block "list" (Optional) {
      worker_count = number (Required)
      mcu_count = number (Optional)
    }
  }

  kafka_cluster block "list" (Required) {

    apache_kafka_cluster block "list" (Required) {
      bootstrap_servers = string (Required)

      vpc block "list" (Required) {
        security_groups = ['set', 'string'] (Required)
        subnets = ['set', 'string'] (Required)
      }
    }
  }

  kafka_cluster_client_authentication block "list" (Required) {
    authentication_type = string (Optional)
  }

  kafka_cluster_encryption_in_transit block "list" (Required) {
    encryption_type = string (Optional)
  }

  log_delivery block "list" (Optional) {

    worker_log_delivery block "list" (Required) {

      cloudwatch_logs block "list" (Optional) {
        enabled = bool (Required)
        log_group = string (Optional)
      }

      firehose block "list" (Optional) {
        enabled = bool (Required)
        delivery_stream = string (Optional)
      }

      s3 block "list" (Optional) {
        enabled = bool (Required)
        bucket = string (Optional)
        prefix = string (Optional)
      }
    }
  }

  plugin block "set" (Required) {

    custom_plugin block "list" (Required) {
      arn = string (Required)
      revision = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  worker_configuration block "list" (Optional) {
    arn = string (Required)
    revision = number (Required)
  }
}
