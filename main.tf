provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-074254c177d57d640"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0c327e1627e44751a"]
  subnet_id              = "subnet-0b42c9097f525363b"

  tags = {
    Name = "ExampleAppServerInstance"
    Author = "Michal Sramek"
    IaC = "Terraform"
  }
}
