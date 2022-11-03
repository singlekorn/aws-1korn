#------------------------------------------------------------
# backend.tf
#------------------------------------------------------------
terraform {
  cloud {
    organization = "1korn"

    workspaces {
      tags = ["project:aws-1korn"]
    }
  }
}
