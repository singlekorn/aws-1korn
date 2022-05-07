#------------------------------------------------------------
# providers.tf
#------------------------------------------------------------
provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/terraform-cloud"
  }
  default_tags {
    tags = {
      Environment = var.env
      Project     = var.project_name
    }
  }
  region = var.primary_region
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/terraform-cloud"
  }
  default_tags {
    tags = {
      Environment = var.env
      Project     = var.project_name
    }
  }
  alias  = "secondary"
  region = var.secondary_region
}
