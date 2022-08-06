output "bucket_location" {
  description = "Location of project bucket"
  value       = google_storage_bucket.backend_bucket.location
}

output "bucket_name" {
  description = "Name of project bucket"
  value       = google_storage_bucket.backend_bucket.name
}