resource "google_compute_instance" "mastodon" {

  name         = "mastodon"
  machine_type = "e2-medium"

  tags = ["mastodon"]

  boot_disk {
    source = "mastodon-madeinusa"
    auto_delete = false
  }

  metadata = {
    enable-oslogin : "TRUE"
  }

  network_interface {
    network = "default"

    access_config {
      network_tier = "STANDARD"
      nat_ip = "35.212.224.150"
    }
  }
}
