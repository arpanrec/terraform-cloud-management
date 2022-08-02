terraform {
  backend "remote" {
    organization = "arpanrec"
    workspaces {
      name = "terraform-cloud-management"
    }
  }
}

