provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1" # For now we only use east-1, so hardcoding this in
}

resource "aws_security_group" "jenkins" {
  name = "jenkins"
  description = "For Jenkins use"
  vpc_id = "vpc-ddf024b9"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.0.0.0/8","134.161.0.0/16","86.2.35.229/32"]
    # IPs: Internal, tanner, yousef
  }
}

resource "aws_instance" "jenkins" {
  ami = "ami-d05e75b8" # This is the Ubuntu 14.04 hvm image
  instance_type = "t2.micro"
  tags = {
    app = "jenkins"
    env = "production"
  }
  vpc_security_group_ids = ["${aws_security_group.ansible.id}"]
  key_name = "tanner"
  subnet_id = "${var.production-subnets.us-east-1b}"
}
