resource "google_cloud_run_service" "cloudrun" {
  name   = "cloudrun-srv"
  location = "us-central1"
  project = var.project

  template {
    spec {
      containers {
        image = "gcr.io/clean-mountain-395906/cloud-runrer-nodej"
      }
    }
  }

  traffic {
    percent     = 100
    latest_revision = true
  }

}


resource "google_cloud_run_service_iam_member" "member" {
  location = google_cloud_run_service.cloudrun.location # the name of cloudrun will be the name given above
  project  = google_cloud_run_service.cloudrun.project
  service  = google_cloud_run_service.cloudrun.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}