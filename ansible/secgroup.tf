resource "aws_security_group" "ansible" {
  name = "ansible"
  description = "For Ansible use"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.0.0.0/0","134.161.0.0/16"]
  }
}
