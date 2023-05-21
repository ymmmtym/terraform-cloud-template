terraform {
  backend "remote" {
    organization = "yumenomatayume"

    workspaces {
      name = "terraform-cloud-google"
    }
  }

  required_version = "~> 1.4.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
