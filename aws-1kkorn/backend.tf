#------------------------------------------------------------
# backend.tf
#------------------------------------------------------------
terraform {
  cloud {
    organization = "singlekorn"

    workspaces {
      tags = ["project:aws-1korn"]
    }
  }
}
