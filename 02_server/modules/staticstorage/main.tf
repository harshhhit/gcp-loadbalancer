resource "google_storage_bucket" "static-site" {
  name          = "staticsitejkvjycjnodejsinstorage"
  location      = var.region
  force_destroy = true
  project = var.project

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}