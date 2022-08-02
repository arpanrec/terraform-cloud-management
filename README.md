# GitHub Repository Management

[![Terraform](https://github.com/arpanrec/terraform-cloud-management/actions/workflows/terraform.yml/badge.svg)](https://github.com/arpanrec/terraform-cloud-management/actions/workflows/terraform.yml)

[Terraform](https://www.terraform.io) Project for managing [Terraform Cloud](https://app.terraform.io/app/arpanrec/workspaces)

## Workflow and Configuration

## Local Run

Make sure the [Terraform Binary](https://www.terraform.io/downloads) is in your PATH.

### [Terraform Login](https://www.terraform.io/cli/commands/login) to [Terraform cloud](https://app.terraform.io/app/arpanrec)

```shell
terraform login
```

or
populate `${HOME}/.terraform.d/credentials.tfrc.json`

```json
{
  "credentials": {
    "app.terraform.io": {
      "token": "xxxx.xxxx.xxxxxxxx"
    }
  }
}
```

### Initialize the Terraform workspace with `terraform init`

```shell
terraform init
```

### Make changes and plan the changes with `terraform plan`

```shell
terraform plan -input=false -out="./tfplan"
```

### Apply the changes with `terraform apply`

```shell
terraform apply "./tfplan"
```
