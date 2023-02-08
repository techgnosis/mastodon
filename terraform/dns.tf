resource "google_dns_record_set" "mastodon" {
  name = "madeinusa.social."
  type = "A"
  ttl  = 300

  managed_zone = "mastodon"
  rrdatas = [google_compute_instance.mastodon.network_interface.0.access_config.0.nat_ip]
}