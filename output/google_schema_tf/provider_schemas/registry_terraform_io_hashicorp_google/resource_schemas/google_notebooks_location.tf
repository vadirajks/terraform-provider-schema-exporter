resource "google_notebooks_location" "name" {
  id = string (Optional, Computed)
  name = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
