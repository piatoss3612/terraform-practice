terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2" # Seoul region
}

provider "tls" {}
