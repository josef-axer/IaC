terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-0c09c7eb16d3e8e70"
  instance_type = "t2.micro"
  key_name = "alura_cursos"
  tags = {
    Name = "Primeira instancia"
  }
}