resource "google_compute_firewall" "ssh-rules" {
  project     = var.project
  name        = "my-firewall-rule"
 
  allow {
    ports    = ["22", "80"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = var.vpc_network
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}


# resource "google_compute_firewall" "allow-ssh-http" {
#   name    = "allow-ssh-http"
#   network = "default"  # Change this if you are using a custom network

#   allow {
#     protocol = "tcp"
#     ports    = ["22", "80"]
#   }

#   source_ranges = ["0.0.0.0/0"]  # Allow traffic from any source IP. You may want to restrict this based on your specific requirements.
  
#   target_tags = ["allow-ssh-http"]  # Add these tags to the instances you want to allow SSH and HTTP traffic

#   description = "Allow SSH and HTTP traffic"
# }