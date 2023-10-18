resource "google_compute_instance_group" "webservers" {
  name        = "terraform-webservers"
  description = "Terraform test instance group"
  project = var.project

  instances = [
    var.instance1,
    var.instance4,
  ]

  named_port {
    name = "http"
    port = "80"
  }

  named_port {
    name = "https"
    port = "8443"
  }

  zone = "us-central1-a"
}