resource "google_storage_bucket" "yumenomatayume_default_bucket" {
  name          = "yumenomatayume_default_bucket"
  location      = "US-WEST1"
  force_destroy = false
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      num_newer_versions = 5
    }
    action {
      type = "Delete"
    }
  }
}

