variable "access_key" {}
variable "secret_key" {}

variable "production-subnets" {
  defaults = {
    us-east-1b-public = "subnet-d2174ff9"
    us-east-1b-private = "subnet-6a3e6641"
    us-east=1c-public = "subnet-a18899d6"
    us-east=1c-private = "subnet-e3a0b194"
    us-east-1d-public = "subnet-d1a78c88"
    us-east-1d-private = "subnet-798fa420"
    us-east-1e-public = "subnet-80e12cbd"
    us-east-1e-private = "subnet-7608c54b"
  }
}
