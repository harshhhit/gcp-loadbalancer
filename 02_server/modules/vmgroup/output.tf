output "vmgroup" {
    value = google_compute_instance_group.webservers.id
}