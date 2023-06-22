provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-07650ecb0de9bd731"
  instance_type = "t3.micro"
  tags = {
    Name = "oak-tree2"
  }
}