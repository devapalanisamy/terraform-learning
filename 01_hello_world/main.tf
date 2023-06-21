provider "aws" {
  region = "eu-west-2"
    access_key = "***"
  secret_key = "***"
}

resource "aws_instance" "example" {
  ami           = "ami-07650ecb0de9bd731"
  instance_type = "t3.micro"
  tags = {
    Name = "oak-tree"
  }
}