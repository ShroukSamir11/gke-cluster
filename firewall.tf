resource "google_compute_firewall" "allow-ssh-main" {
  name    = "allow-ssh-main"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

