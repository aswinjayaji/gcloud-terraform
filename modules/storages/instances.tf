 resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-03-d8c74a304f77"
  location    = "US"
  uniform_bucket_level_access = true
}
terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-03-d8c74a304f77"
    prefix  = "terraform/state"
  }
}
