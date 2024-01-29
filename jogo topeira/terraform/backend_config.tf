terraform {
  required_version = ">= 1.6.3"
  backend "gcs" {
    bucket = "tf-b2b-states-files"
    prefix = "/web/b2b-web"
  }
}