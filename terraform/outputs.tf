output "mastodon" {
  value       = google_compute_instance.mastodon.network_interface.0.access_config.0.nat_ip
  description = "The public IP address of the mastodon vm"
}
