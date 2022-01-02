resource "google_storage_bucket" "bucket" {
  name          = "bucket.yumenomatayume.net"
  location      = "US-WEST1"
  force_destroy = true
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "Delete"
    }
  }
}

