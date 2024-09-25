variable "name" {}
variable "env" {}
variable "internal" {}
variable "load_balancer_type" {}
variable "vpc_id" {}
variable "port" {
  default = 80
}
variable "sg_subnet_cidr" {}
variable "subnets" {}
variable "tags" {}