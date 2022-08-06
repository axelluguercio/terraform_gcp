# terraform_gcp

## Introduction

For this project, we will use Terraform to create, deploy, and keep track of infrastructure on Google Cloud provider.

> Build and reference your own Terraform modules.

> Add a remote backend to your configuration.

> Use and implement a module from the Terraform Registry.

> Test connectivity between the resources you've created.

## Setup

Clone the repository

```
https://github.com/axelluguercio/terraform_gcp.git
```

Export your gcp project id to plan and apply all changes

```
export TF_VAR_project_id=YOUR_GCP_PROJECT_ID
```

Verify the all config files with terraform plan

```
terraform plan
```

Apply changes

```
terraform apply
```

Migrate terraform states to the newly created backend bucket, to store the states on the cloud.

```
terraform init -migrate-state
```

## Verification

The 2 vms are in different subnets, run a connectivity test from:

> Navigate to Network Intelligence > Connectivity Tests.

> Run a connectivity test on the two vms to verify that they are reachable.