variable "access_key" {}
variable "secret_key" {}

variable "production-subnets" {
  default = {
    us-east-1b = "subnet-d2174ff9"
    us-east=1c = "subnet-a18899d6"
    us-east-1d = "subnet-d1a78c88"
    us-east-1e = "subnet-80e12cbd"
  }
}
