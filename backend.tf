terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    //bucket = "collinsorighose-tf"
    bucket = var.bucket
    key    = var.key
    //key    = "dev/terraform.tfstate"
    region = "eu-west-2"
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}
