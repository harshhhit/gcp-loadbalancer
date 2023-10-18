resource "google_compute_subnetwork" "subnet_us_central1" {
  name          = "subnet-us-central1"
  region        = "us-central1"
  network       = var.vpc_network
  ip_cidr_range = "10.1.0.0/24"
  project = var.project
}

resource "google_compute_subnetwork" "subnet_europe_west1" {
  name          = "subnet-europe-west1"
  region        = "europe-west1"
  network       = var.vpc_network
  ip_cidr_range = "10.2.0.0/24"
  project = var.project
}
