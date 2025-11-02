resource "aws_msk_cluster" "name" {
  cluster_name = string (Required)
  kafka_version = string (Required)
  number_of_broker_nodes = number (Required)
  arn = string (Computed)
  bootstrap_brokers = string (Computed)
  bootstrap_brokers_public_sasl_iam = string (Computed)
  bootstrap_brokers_public_sasl_scram = string (Computed)
  bootstrap_brokers_public_tls = string (Computed)
  bootstrap_brokers_sasl_iam = string (Computed)
  bootstrap_brokers_sasl_scram = string (Computed)
  bootstrap_brokers_tls = string (Computed)
  bootstrap_brokers_vpc_connectivity_sasl_iam = string (Computed)
  bootstrap_brokers_vpc_connectivity_sasl_scram = string (Computed)
  bootstrap_brokers_vpc_connectivity_tls = string (Computed)
  cluster_uuid = string (Computed)
  current_version = string (Computed)
  enhanced_monitoring = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  storage_mode = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  zookeeper_connect_string = string (Computed)
  zookeeper_connect_string_tls = string (Computed)

  broker_node_group_info block "list" (Required) {
    client_subnets = ['set', 'string'] (Required)
    instance_type = string (Required)
    security_groups = ['set', 'string'] (Required)
    az_distribution = string (Optional)

    connectivity_info block "list" (Optional) {

      public_access block "list" (Optional) {
        type = string (Optional, Computed)
      }

      vpc_connectivity block "list" (Optional) {

        client_authentication block "list" (Optional) {
          tls = bool (Optional, Computed)

          sasl block "list" (Optional) {
            iam = bool (Optional, Computed)
            scram = bool (Optional, Computed)
          }
        }
      }
    }

    storage_info block "list" (Optional) {

      ebs_storage_info block "list" (Optional) {
        volume_size = number (Optional)

        provisioned_throughput block "list" (Optional) {
          enabled = bool (Optional)
          volume_throughput = number (Optional)
        }
      }
    }
  }

  client_authentication block "list" (Optional) {
    unauthenticated = bool (Optional)

    sasl block "list" (Optional) {
      iam = bool (Optional)
      scram = bool (Optional)
    }

    tls block "list" (Optional) {
      certificate_authority_arns = ['set', 'string'] (Optional)
    }
  }

  configuration_info block "list" (Optional) {
    arn = string (Required)
    revision = number (Required)
  }

  encryption_info block "list" (Optional) {
    encryption_at_rest_kms_key_arn = string (Optional, Computed)

    encryption_in_transit block "list" (Optional) {
      client_broker = string (Optional)
      in_cluster = bool (Optional)
    }
  }

  logging_info block "list" (Optional) {

    broker_logs block "list" (Required) {

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

  open_monitoring block "list" (Optional) {

    prometheus block "list" (Required) {

      jmx_exporter block "list" (Optional) {
        enabled_in_broker = bool (Required)
      }

      node_exporter block "list" (Optional) {
        enabled_in_broker = bool (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
