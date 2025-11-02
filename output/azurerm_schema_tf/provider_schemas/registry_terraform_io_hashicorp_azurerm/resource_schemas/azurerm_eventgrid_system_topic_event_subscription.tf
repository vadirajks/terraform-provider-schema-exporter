resource "azurerm_eventgrid_system_topic_event_subscription" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  system_topic = string (Required)
  advanced_filtering_on_arrays_enabled = bool (Optional)
  event_delivery_schema = string (Optional)
  eventhub_endpoint_id = string (Optional, Computed)
  expiration_time_utc = string (Optional)
  hybrid_connection_endpoint_id = string (Optional, Computed)
  id = string (Optional, Computed)
  included_event_types = ['list', 'string'] (Optional, Computed)
  labels = ['list', 'string'] (Optional)
  service_bus_queue_endpoint_id = string (Optional)
  service_bus_topic_endpoint_id = string (Optional)

  advanced_filter block "list" (Optional) {

    bool_equals block "list" (Optional) {
      key = string (Required)
      value = bool (Required)
    }

    is_not_null block "list" (Optional) {
      key = string (Required)
    }

    is_null_or_undefined block "list" (Optional) {
      key = string (Required)
    }

    number_greater_than block "list" (Optional) {
      key = string (Required)
      value = number (Required)
    }

    number_greater_than_or_equals block "list" (Optional) {
      key = string (Required)
      value = number (Required)
    }

    number_in block "list" (Optional) {
      key = string (Required)
      values = ['list', 'number'] (Required)
    }

    number_in_range block "list" (Optional) {
      key = string (Required)
      values = ['list', ['list', 'number']] (Required)
    }

    number_less_than block "list" (Optional) {
      key = string (Required)
      value = number (Required)
    }

    number_less_than_or_equals block "list" (Optional) {
      key = string (Required)
      value = number (Required)
    }

    number_not_in block "list" (Optional) {
      key = string (Required)
      values = ['list', 'number'] (Required)
    }

    number_not_in_range block "list" (Optional) {
      key = string (Required)
      values = ['list', ['list', 'number']] (Required)
    }

    string_begins_with block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_contains block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_ends_with block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_in block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_not_begins_with block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_not_contains block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_not_ends_with block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }

    string_not_in block "list" (Optional) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  azure_function_endpoint block "list" (Optional) {
    function_id = string (Required)
    max_events_per_batch = number (Optional)
    preferred_batch_size_in_kilobytes = number (Optional)
  }

  dead_letter_identity block "list" (Optional) {
    type = string (Required)
    user_assigned_identity = string (Optional)
  }

  delivery_identity block "list" (Optional) {
    type = string (Required)
    user_assigned_identity = string (Optional)
  }

  delivery_property block "list" (Optional) {
    header_name = string (Required)
    type = string (Required)
    secret = bool (Optional)
    source_field = string (Optional)
    value = string (Optional)
  }

  retry_policy block "list" (Optional) {
    event_time_to_live = number (Required)
    max_delivery_attempts = number (Required)
  }

  storage_blob_dead_letter_destination block "list" (Optional) {
    storage_account_id = string (Required)
    storage_blob_container_name = string (Required)
  }

  storage_queue_endpoint block "list" (Optional) {
    queue_name = string (Required)
    storage_account_id = string (Required)
    queue_message_time_to_live_in_seconds = number (Optional)
  }

  subject_filter block "list" (Optional) {
    case_sensitive = bool (Optional)
    subject_begins_with = string (Optional)
    subject_ends_with = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  webhook_endpoint block "list" (Optional) {
    url = string (Required)
    active_directory_app_id_or_uri = string (Optional)
    active_directory_tenant_id = string (Optional)
    base_url = string (Computed)
    max_events_per_batch = number (Optional)
    preferred_batch_size_in_kilobytes = number (Optional)
  }
}
