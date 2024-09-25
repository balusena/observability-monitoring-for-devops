variable "component" {}
variable "env" {}
variable "tags" {}
variable "subnet_ids" {}
variable "sg_subnet_cidr" {}
variable "kms_key_arn" {}
variable "engine" {}
variable "node_type" {}
variable "num_node_groups" {}
variable "replicas_per_node_group" {}
variable "engine_version" {}
variable "port" {
  default = 6379
}
variable "vpc_id" {}
variable "parameter_group_name" {}
