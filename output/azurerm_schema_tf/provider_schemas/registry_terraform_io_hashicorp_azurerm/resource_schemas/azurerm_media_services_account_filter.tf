resource "azurerm_media_services_account_filter" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  first_quality_bitrate = number (Optional)
  id = string (Optional, Computed)

  presentation_time_range block "list"  (Optional){
    unit_timescale_in_milliseconds = number (Required)
    end_in_units = number (Optional)
    force_end = bool (Optional)
    live_backoff_in_units = number (Optional)
    presentation_window_in_units = number (Optional)
    start_in_units = number (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  track_selection block "list"  (Optional){

    condition block "list"  (Required){
      operation = string (Required)
      property = string (Required)
      value = string (Required)
    }
  }
}
