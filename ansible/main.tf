provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1" # For now we only use east-1, so hardcoding this in
}

resource "aws_instance" "ansible" {
  ami = "ami-d05e75b8" # This is the Ubuntu 14.04 hvm image
  instance_type = "t2.micro"
  tags = {
    app = "ansible"
    env = "production"
  }
  vpc_security_group_ids = ["${lookup(aws_security_group.ansible.id)}"]
}
