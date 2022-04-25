resource "google_compute_firewall" "allow-http" {
  name    = "default-allow-http"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

resource "google_compute_firewall" "allow-https" {
  name    = "default-allow-https"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
}

resource "google_compute_firewall" "allow-dns" {
  name    = "default-allow-dns"
  network = "default"
  allow {
    protocol = "all"
    ports    = ["53"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["dns-server"]
}
