resource "tfe_workspace" "github_repo_management" {
  name         = "github-repo-management"
  organization = var.arpanrec_tf_cloud_oraganization
  auto_apply   = true
}
