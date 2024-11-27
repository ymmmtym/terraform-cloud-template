terraform {
  backend "remote" {
    organization = "yumenomatayume"

    workspaces {
      name = "terraform-cloud-google"
    }
  }

  required_version = "~> 1.10.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
