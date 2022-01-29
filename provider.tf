terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

provider "tfe" {
}

terraform {
  backend "remote" {
    organization = "arpanrec"
    workspaces {
      name = "terraform-cloud-management"
    }
  }
}

