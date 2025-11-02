resource "aws_iot_topic_rule" "name" {
  enabled = bool (Required)
  name = string (Required)
  sql = string (Required)
  sql_version = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  cloudwatch_alarm block "set" (Optional) {
    alarm_name = string (Required)
    role_arn = string (Required)
    state_reason = string (Required)
    state_value = string (Required)
  }

  cloudwatch_logs block "set" (Optional) {
    log_group_name = string (Required)
    role_arn = string (Required)
    batch_mode = bool (Optional)
  }

  cloudwatch_metric block "set" (Optional) {
    metric_name = string (Required)
    metric_namespace = string (Required)
    metric_unit = string (Required)
    metric_value = string (Required)
    role_arn = string (Required)
    metric_timestamp = string (Optional)
  }

  dynamodb block "set" (Optional) {
    hash_key_field = string (Required)
    hash_key_value = string (Required)
    role_arn = string (Required)
    table_name = string (Required)
    hash_key_type = string (Optional)
    operation = string (Optional)
    payload_field = string (Optional)
    range_key_field = string (Optional)
    range_key_type = string (Optional)
    range_key_value = string (Optional)
  }

  dynamodbv2 block "set" (Optional) {
    role_arn = string (Required)

    put_item block "list" (Optional) {
      table_name = string (Required)
    }
  }

  elasticsearch block "set" (Optional) {
    endpoint = string (Required)
    id = string (Required)
    index = string (Required)
    role_arn = string (Required)
    type = string (Required)
  }

  error_action block "list" (Optional) {

    cloudwatch_alarm block "list" (Optional) {
      alarm_name = string (Required)
      role_arn = string (Required)
      state_reason = string (Required)
      state_value = string (Required)
    }

    cloudwatch_logs block "list" (Optional) {
      log_group_name = string (Required)
      role_arn = string (Required)
      batch_mode = bool (Optional)
    }

    cloudwatch_metric block "list" (Optional) {
      metric_name = string (Required)
      metric_namespace = string (Required)
      metric_unit = string (Required)
      metric_value = string (Required)
      role_arn = string (Required)
      metric_timestamp = string (Optional)
    }

    dynamodb block "list" (Optional) {
      hash_key_field = string (Required)
      hash_key_value = string (Required)
      role_arn = string (Required)
      table_name = string (Required)
      hash_key_type = string (Optional)
      operation = string (Optional)
      payload_field = string (Optional)
      range_key_field = string (Optional)
      range_key_type = string (Optional)
      range_key_value = string (Optional)
    }

    dynamodbv2 block "list" (Optional) {
      role_arn = string (Required)

      put_item block "list" (Optional) {
        table_name = string (Required)
      }
    }

    elasticsearch block "list" (Optional) {
      endpoint = string (Required)
      id = string (Required)
      index = string (Required)
      role_arn = string (Required)
      type = string (Required)
    }

    firehose block "list" (Optional) {
      delivery_stream_name = string (Required)
      role_arn = string (Required)
      batch_mode = bool (Optional)
      separator = string (Optional)
    }

    http block "list" (Optional) {
      url = string (Required)
      confirmation_url = string (Optional)

      http_header block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }

    iot_analytics block "list" (Optional) {
      channel_name = string (Required)
      role_arn = string (Required)
      batch_mode = bool (Optional)
    }

    iot_events block "list" (Optional) {
      input_name = string (Required)
      role_arn = string (Required)
      batch_mode = bool (Optional)
      message_id = string (Optional)
    }

    kafka block "list" (Optional) {
      client_properties = ['map', 'string'] (Required)
      destination_arn = string (Required)
      topic = string (Required)
      key = string (Optional)
      partition = string (Optional)

      header block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }

    kinesis block "list" (Optional) {
      role_arn = string (Required)
      stream_name = string (Required)
      partition_key = string (Optional)
    }

    lambda block "list" (Optional) {
      function_arn = string (Required)
    }

    republish block "list" (Optional) {
      role_arn = string (Required)
      topic = string (Required)
      qos = number (Optional)
    }

    s3 block "list" (Optional) {
      bucket_name = string (Required)
      key = string (Required)
      role_arn = string (Required)
      canned_acl = string (Optional)
    }

    sns block "list" (Optional) {
      role_arn = string (Required)
      target_arn = string (Required)
      message_format = string (Optional)
    }

    sqs block "list" (Optional) {
      queue_url = string (Required)
      role_arn = string (Required)
      use_base64 = bool (Required)
    }

    step_functions block "list" (Optional) {
      role_arn = string (Required)
      state_machine_name = string (Required)
      execution_name_prefix = string (Optional)
    }

    timestream block "list" (Optional) {
      database_name = string (Required)
      role_arn = string (Required)
      table_name = string (Required)

      dimension block "set" (Required) {
        name = string (Required)
        value = string (Required)
      }

      timestamp block "list" (Optional) {
        unit = string (Required)
        value = string (Required)
      }
    }
  }

  firehose block "set" (Optional) {
    delivery_stream_name = string (Required)
    role_arn = string (Required)
    batch_mode = bool (Optional)
    separator = string (Optional)
  }

  http block "set" (Optional) {
    url = string (Required)
    confirmation_url = string (Optional)

    http_header block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  iot_analytics block "set" (Optional) {
    channel_name = string (Required)
    role_arn = string (Required)
    batch_mode = bool (Optional)
  }

  iot_events block "set" (Optional) {
    input_name = string (Required)
    role_arn = string (Required)
    batch_mode = bool (Optional)
    message_id = string (Optional)
  }

  kafka block "set" (Optional) {
    client_properties = ['map', 'string'] (Required)
    destination_arn = string (Required)
    topic = string (Required)
    key = string (Optional)
    partition = string (Optional)

    header block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  kinesis block "set" (Optional) {
    role_arn = string (Required)
    stream_name = string (Required)
    partition_key = string (Optional)
  }

  lambda block "set" (Optional) {
    function_arn = string (Required)
  }

  republish block "set" (Optional) {
    role_arn = string (Required)
    topic = string (Required)
    qos = number (Optional)
  }

  s3 block "set" (Optional) {
    bucket_name = string (Required)
    key = string (Required)
    role_arn = string (Required)
    canned_acl = string (Optional)
  }

  sns block "set" (Optional) {
    role_arn = string (Required)
    target_arn = string (Required)
    message_format = string (Optional)
  }

  sqs block "set" (Optional) {
    queue_url = string (Required)
    role_arn = string (Required)
    use_base64 = bool (Required)
  }

  step_functions block "set" (Optional) {
    role_arn = string (Required)
    state_machine_name = string (Required)
    execution_name_prefix = string (Optional)
  }

  timestream block "set" (Optional) {
    database_name = string (Required)
    role_arn = string (Required)
    table_name = string (Required)

    dimension block "set" (Required) {
      name = string (Required)
      value = string (Required)
    }

    timestamp block "list" (Optional) {
      unit = string (Required)
      value = string (Required)
    }
  }
}
