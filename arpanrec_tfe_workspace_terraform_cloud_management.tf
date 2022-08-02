resource "tfe_workspace" "terraform_cloud_management" {
  name         = "terraform-cloud-management"
  organization = var.arpanrec_tf_cloud_oraganization
  auto_apply   = true
}
