resource "azurerm_video_analyzer_edge_module" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  video_analyzer_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
