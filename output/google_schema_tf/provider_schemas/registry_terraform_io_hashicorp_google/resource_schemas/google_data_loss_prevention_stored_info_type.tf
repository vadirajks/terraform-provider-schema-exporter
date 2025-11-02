resource "google_data_loss_prevention_stored_info_type" "name" {
  parent = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  stored_info_type_id = string (Optional, Computed)

  dictionary block "list" (Optional) {

    cloud_storage_path block "list" (Optional) {
      path = string (Required)
    }

    word_list block "list" (Optional) {
      words = ['list', 'string'] (Required)
    }
  }

  large_custom_dictionary block "list" (Optional) {

    big_query_field block "list" (Optional) {

      field block "list" (Required) {
        name = string (Required)
      }

      table block "list" (Required) {
        dataset_id = string (Required)
        project_id = string (Required)
        table_id = string (Required)
      }
    }

    cloud_storage_file_set block "list" (Optional) {
      url = string (Required)
    }

    output_path block "list" (Required) {
      path = string (Required)
    }
  }

  regex block "list" (Optional) {
    pattern = string (Required)
    group_indexes = ['list', 'number'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
