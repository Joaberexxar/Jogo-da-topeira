locals {
  name = "${var.stage}-b2b-web"
  project = "opatech-b2b"
  region = "southamerica-east1"
}

provider "google" {
  project = local.project
  region  = local.region
}

resource "google_storage_bucket" "static_site" {
  name          = "tf-${local.name}-static"
  location      = local.region
  force_destroy = true
  website {
    main_page_suffix = "index.html"
  }
  cors {
    origin          = ["*"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}

resource "google_storage_bucket_object" "static_site_src" {
  for_each = fileset("../dist", "**/*")
  name     = each.value
  cache_control = "public, max-age=60"
  source   = "../dist/${each.value}"
  bucket   = google_storage_bucket.static_site.name

  content_type = lookup({
    ".html"= "text/html",
    ".css" = "text/css",
    ".svg" = "image/svg+xml",
    ".png" = "image/png",
    ".js"  = "application/javascript",
    ".json" = "application/json",
    ".ico" = "image/x-icon",
    ".txt" = "text/plain",
    ".xml" = "text/xml",
  }, regex(".[^.]+$", each.value), "text/plain; charset=utf8")
}

resource "google_storage_bucket_iam_member" "member" {
  provider = google-beta
  bucket   = google_storage_bucket.static_site.name
  role     = "roles/storage.objectViewer"
  member   = "allUsers"
}