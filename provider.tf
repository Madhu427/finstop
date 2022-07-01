provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket = "s3-tf-finstop123"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

