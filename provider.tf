variable "GCP_CREDENTIALS" {}
variable "PROJECT_ID"      {}
variable "REGION" {
  default = "us-west1"
}

provider "google" {
  credentials = "${var.GCP_CREDENTIALS}"
  project     = "${var.PROJECT_ID}"
  region      = "${var.REGION}"
}
