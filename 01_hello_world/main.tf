provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-07650ecb0de9bd731"
  instance_type = var.instance1
  tags = {
    Name = "oak-tree3"
  }

  user_data = <<-EOF
    #!/bin/bash
    set -ex
    sudo yum update -y
    sudo yum install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  EOF

}



