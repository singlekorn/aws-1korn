module "vpc-usw2" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project_name}-${var.env}"
  cidr = "10.170.0.0/20"

  azs             = ["usw2-az2", "usw2-az3"]
  public_subnets  = ["10.170.1.0/26", "10.170.1.64/26"]
  private_subnets = ["10.170.2.0/23", "10.170.4.0/23"]
}

module "vpc-use2" {
  source = "terraform-aws-modules/vpc/aws"
  providers = {
    aws = aws.secondary
   }

  name = "${var.project_name}-${var.env}"
  cidr = "10.174.0.0/20"

  azs             = ["use2-az2", "use2-az3"]
  public_subnets  = ["10.174.1.0/26", "10.174.1.64/26"]
  private_subnets = ["10.174.2.0/23", "10.174.4.0/23"]
}