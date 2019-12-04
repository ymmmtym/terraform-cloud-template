variable "GCP_CREDENTIALS" {}
variable "PROJECT_ID"      {}

provider "google" {
  credentials = ${var.GCP_CREDENTIALS}
  project     = ${var.PROJECT_ID}
  region      = "us-west1"
}
