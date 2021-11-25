# resource "google_dns_managed_zone" "yumenomatayume_net" {
#   name     = "yumenomatayume_net"
#   dns_name = "yumenomatayume.net."
# }

# resource "google_dns_record_set" "keywoo" {
#   name = "keywoo.${google_dns_managed_zone.yumenomatayume_net.dns_name}"
#   type = "A"
#   ttl  = 300

#   managed_zone = google_dns_managed_zone.yumenomatayume_net.name

#   rrdatas = [google_compute_instance.default.network_interface[0].access_config[0].nat_ip]
# }
