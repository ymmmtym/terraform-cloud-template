resource "google_compute_address" "default" {
  name = "global-ip"
}

resource "google_compute_instance" "default" {
  name         = "centos01"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  tags = ["http-server", "https-server", "dns-server"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size  = "30"
      type  = "pd-standard"
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = google_compute_address.default.address
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = <<EOT
    sudo dd if=/dev/zero of=/swapfile bs=1M count=1024
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo sed -i '$ a /swapfile                                 swap                    swap    defaults        0 0' /etc/fstab
    EOT


  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}


output "global_ip" {
  value = google_compute_address.default.address
}
