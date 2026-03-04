terraform {
  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.5"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}
