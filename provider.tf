provider "google" {
  credentials = var.GCP_CREDENTIALS
  project     = var.PROJECT_ID
  region      = var.REGION
}
