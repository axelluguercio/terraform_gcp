resource "google_storage_bucket" "backend_bucket" {
  name          = "# Required name"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}