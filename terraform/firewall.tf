resource "google_compute_firewall" "mastodon" {
  name        = "mastodon"
  network     = "default"
  description = "Firewall rules for mastodon vm"

  allow {
    protocol  = "tcp"
    ports     = ["6443", "22", "443", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["mastodon"]
}
