resource "tfe_organization" "arpanrec" {
  name                     = "arpanrec"
  email                    = "me@arpanrec.me"
  collaborator_auth_policy = "two_factor_mandatory"
}

resource "tfe_workspace" "github_repo_management" {
  name         = "github-repo-management"
  organization = tfe_organization.arpanrec.name
  auto_apply   = true
}

resource "tfe_workspace" "terraform_cloud_management" {
  name         = "terraform-cloud-management"
  organization = tfe_organization.arpanrec.name
  auto_apply   = true
}
