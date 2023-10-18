#creating backend service

# Define a backend service
resource "google_compute_backend_service" "backend_service" {
  name = "web-backend-service"
  project = var.project
  port_name = "http"
  protocol = "HTTP"
  timeout_sec = 30
  enable_cdn  = false
  health_checks = [google_compute_http_health_check.health_check.id]

  backend {
    group = var.vmgroup
}
}

resource "google_compute_backend_bucket" "image_backend" {
  name        = "image-backend-bucket"
  description = "Contains beautiful images"
  bucket_name = var.storagebucket
  enable_cdn  = true
  project = var.project
  
}

# Define a health check
resource "google_compute_http_health_check" "health_check" {
  name               = "web-health-check"
  port               = 80
  request_path       = "/"
  check_interval_sec = 10
  timeout_sec        = 5
  project = var.project
}



# url map
resource "google_compute_url_map" "url_map" {
  name            = "url-map"
  provider        = google-beta
  default_service = google_compute_backend_service.backend_service.id
  project = var.project
}

# forwarding rule
resource "google_compute_global_forwarding_rule" "default" {
  name                  = "l7-xlb-forwarding-rule"
  provider              = google-beta
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "80"
  target                = google_compute_target_http_proxy.default.id
  project = var.project
  
}

# http proxy
resource "google_compute_target_http_proxy" "default" {
  name     = "l7-xlb-target-http-proxy"
  provider = google-beta
  url_map  = google_compute_url_map.url_map.id
  project = var.project
}