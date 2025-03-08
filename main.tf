terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use latest version if possible
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-3-8-25"
  force_destroy = true
 
  tags = {
    Name = "Jenkins Bucket"
  }
}