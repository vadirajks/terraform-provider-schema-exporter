resource "azurerm_monitor_data_collection_rule" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  data_collection_endpoint_id = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  immutable_id = string (Computed)
  kind = string (Optional)
  tags = ['map', 'string'] (Optional)

  data_flow block "list" (Required) {
    destinations = ['list', 'string'] (Required)
    streams = ['list', 'string'] (Required)
    built_in_transform = string (Optional)
    output_stream = string (Optional)
    transform_kql = string (Optional)
  }

  data_sources block "list" (Optional) {

    data_import block "list" (Optional) {

      event_hub_data_source block "list" (Required) {
        name = string (Required)
        stream = string (Required)
        consumer_group = string (Optional)
      }
    }

    extension block "list" (Optional) {
      extension_name = string (Required)
      name = string (Required)
      streams = ['list', 'string'] (Required)
      extension_json = string (Optional)
      input_data_sources = ['list', 'string'] (Optional)
    }

    iis_log block "list" (Optional) {
      name = string (Required)
      streams = ['list', 'string'] (Required)
      log_directories = ['list', 'string'] (Optional)
    }

    log_file block "list" (Optional) {
      file_patterns = ['list', 'string'] (Required)
      format = string (Required)
      name = string (Required)
      streams = ['list', 'string'] (Required)

      settings block "list" (Optional) {

        text block "list" (Required) {
          record_start_timestamp_format = string (Required)
        }
      }
    }

    performance_counter block "list" (Optional) {
      counter_specifiers = ['list', 'string'] (Required)
      name = string (Required)
      sampling_frequency_in_seconds = number (Required)
      streams = ['list', 'string'] (Required)
    }

    platform_telemetry block "list" (Optional) {
      name = string (Required)
      streams = ['list', 'string'] (Required)
    }

    prometheus_forwarder block "list" (Optional) {
      name = string (Required)
      streams = ['list', 'string'] (Required)

      label_include_filter block "set" (Optional) {
        label = string (Required)
        value = string (Required)
      }
    }

    syslog block "list" (Optional) {
      facility_names = ['list', 'string'] (Required)
      log_levels = ['list', 'string'] (Required)
      name = string (Required)
      streams = ['list', 'string'] (Required)
    }

    windows_event_log block "list" (Optional) {
      name = string (Required)
      streams = ['list', 'string'] (Required)
      x_path_queries = ['list', 'string'] (Required)
    }

    windows_firewall_log block "list" (Optional) {
      name = string (Required)
      streams = ['list', 'string'] (Required)
    }
  }

  destinations block "list" (Required) {

    azure_monitor_metrics block "list" (Optional) {
      name = string (Required)
    }

    event_hub block "list" (Optional) {
      event_hub_id = string (Required)
      name = string (Required)
    }

    event_hub_direct block "list" (Optional) {
      event_hub_id = string (Required)
      name = string (Required)
    }

    log_analytics block "list" (Optional) {
      name = string (Required)
      workspace_resource_id = string (Required)
    }

    monitor_account block "list" (Optional) {
      monitor_account_id = string (Required)
      name = string (Required)
    }

    storage_blob block "list" (Optional) {
      container_name = string (Required)
      name = string (Required)
      storage_account_id = string (Required)
    }

    storage_blob_direct block "list" (Optional) {
      container_name = string (Required)
      name = string (Required)
      storage_account_id = string (Required)
    }

    storage_table_direct block "list" (Optional) {
      name = string (Required)
      storage_account_id = string (Required)
      table_name = string (Required)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  stream_declaration block "set" (Optional) {
    stream_name = string (Required)

    column block "list" (Required) {
      name = string (Required)
      type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
