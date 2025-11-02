resource "aws_msk_replicator" "name" {
  replicator_name = string (Required)
  service_execution_role_arn = string (Required)
  arn = string (Computed)
  current_version = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  kafka_cluster block "list" (Required) {

    amazon_msk_cluster block "list" (Required) {
      msk_cluster_arn = string (Required)
    }

    vpc_config block "list" (Required) {
      subnet_ids = ['set', 'string'] (Required)
      security_groups_ids = ['set', 'string'] (Optional)
    }
  }

  replication_info_list block "list" (Required) {
    source_kafka_cluster_arn = string (Required)
    target_compression_type = string (Required)
    target_kafka_cluster_arn = string (Required)
    source_kafka_cluster_alias = string (Computed)
    target_kafka_cluster_alias = string (Computed)

    consumer_group_replication block "list" (Required) {
      consumer_groups_to_replicate = ['set', 'string'] (Required)
      consumer_groups_to_exclude = ['set', 'string'] (Optional)
      detect_and_copy_new_consumer_groups = bool (Optional)
      synchronise_consumer_group_offsets = bool (Optional)
    }

    topic_replication block "list" (Required) {
      topics_to_replicate = ['set', 'string'] (Required)
      copy_access_control_lists_for_topics = bool (Optional)
      copy_topic_configurations = bool (Optional)
      detect_and_copy_new_topics = bool (Optional)
      topics_to_exclude = ['set', 'string'] (Optional)

      starting_position block "list" (Optional) {
        type = string (Optional)
      }

      topic_name_configuration block "list" (Optional) {
        type = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
