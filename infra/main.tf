#1. this block  we initialize terraform (bucket , Dynamodb) to access AWS
# it takes a script from local machine and puts it in AWS s3 bucket

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "django-api-prod-ready6"
    key    = "app.tfstate"
    region = "us-west-2"
    # Replace this with your DynamoDB table name!helps to maintain the lock 
    dynamodb_table = "django-api-prod-ready-lock6"
    encrypt        = true

  }
  required_providers {
    aws = {
      source  = "hashicorp/aws" # a plugnin
      version = "~> 4.41.0"

    }

  }

}

# execute  the  following command line :
#2.$terrafom fmt, init


# 3. create following block:
provider "aws" {
  region = "us-west-2"
}

#  Local server:
#  will be used by all my resources
# these data must be wrapped by resource in bastion.tf
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "MaxJokar"
  }

}


data "aws_region" "current" {}


# ==> vaiables.tf 4.


