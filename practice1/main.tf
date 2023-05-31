terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c9c942bd7bf113a2" # Ubuntu 22.04 LTS
  instance_type = "t2.micro"              # Free tier

  tags = {
    Name = "terraform-example" # Name tag
  }
}
