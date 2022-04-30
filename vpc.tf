module "vpc-primary" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project_name}-${var.env}-usw2"
  cidr = "10.170.0.0/20"

  azs             = ["usw2-az2", "usw2-az3"]
  public_subnets  = ["10.170.1.0/26", "10.170.1.64/26"]
  private_subnets = ["10.170.2.0/23", "10.170.4.0/23"]
}

module "vpc-secondary" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project_name}-${var.env}-use2"
  cidr = "10.172.0.0/20"

  azs             = ["usw2-az2", "usw2-az3"]
  public_subnets  = ["10.172.1.0/26", "10.172.1.64/26"]
  private_subnets = ["10.172.2.0/23", "10.172.4.0/23"]
}