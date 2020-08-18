provider "aws" {
  region = "ap-northeast-1"
}

#backend make sure to change bucket name 
terraform {
  backend "s3" {
    bucket = "ap-northeast-1-huimin-devops"
    key    = "terraform/ap-northeast-1/huimin_vpc_terraform_dev.tfstate"
    region = "ap-northeast-1"
  }
}
