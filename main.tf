provider "google" {
  project = "elite-rider-254021"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_compute_instance" "default" {
  name         = "betz4871-testvm1"
  machine_type = "f1-micro"
  zone         = "us-central1-c"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}






