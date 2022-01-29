# GitHub Repository Management

[Terraform](https://www.terraform.io) Project for managing [Terraform Cloud](https://app.terraform.io/app/arpanrec/workspaces)

## Workflow and Configuration

### @ Backend

Current backend is stored at `./backend_config.tf`

```hcl
terraform {
  backend "remote" {
    organization = "arpanrec"
    workspaces {
      name = "terraform-cloud-management"
    }
  }
}
```

### @ GitHub

* Actions: Trigger Push on Main Branch, [Terraform Actions](.github/workflows/terraform.yml)
* Access token to app.terraform.io is stored in GitHub Actions secrets `TF_API_TOKEN` in `production` environment.
This allows GitHub Actions to communicate with [Terraform Cloud](https://app.terraform.io/app/arpanrec/workspaces/terraform-cloud-management).

## Local Run

Make sure the [Terraform Binary](https://www.terraform.io/downloads) is in your PATH.

### [Terraform Login](https://www.terraform.io/cli/commands/login) to [Terraform cloud](https://app.terraform.io/app/arpanrec)

```shell
terraform login
```
or
populate `$HOME/.terraform.d/credentials.tfrc.json`

```json
{
  "credentials": {
    "app.terraform.io": {
      "token": "xxxx.xxxx.xxxxxxxx"
    }
  }
}
```

### Initialize the Terraform workspace with `terraform init`.

```shell
terraform init
```

### Make changes and plan the changes with `terraform plan`.

```shell
terraform plan -input=false -var-file=".secret.all.json" -out="./tfplan"
```

### Apply the changes with `terraform apply`.

```shell
terraform apply "./tfplan"
```

## TODO
GitHub Actions secrets `TF_API_TOKEN` for [github-repo-management](https://github.com/arpanrec/terraform-cloud-management) is added manually. This should be pulled from vault.
