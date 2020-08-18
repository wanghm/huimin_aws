//provider "aws" {
//  region = "us-east-1"
//}

module "vpc" {
  source = "../../terraform-aws-modules/terraform-aws-vpc/"

  name = "ap-northeast-1-huimin-vpc"

  cidr = "10.10.0.0/16"

  azs             = ["ap-northeast-1a", "ap-northeast-1c"]
  private_subnets = ["10.10.1.0/24", "10.10.3.0/24"]
  public_subnets  = ["10.10.101.0/24", "10.10.103.0/24"]

  //assign_generated_ipv6_cidr_block = false

  enable_nat_gateway = false
  single_nat_gateway = false
  
  # VPC endpoint for S3
  enable_s3_endpoint = true

  //public_subnet_tags = {
  //  Name = "huimin-vpc-public"
  //}

  tags = {
    Owner       = "huimin"
    Environment = "devops"
    Region = "ap-northeast-1"
  }

  vpc_tags = {
    Name = "ap-northeast-1-huimin-vpc"
  }

}
