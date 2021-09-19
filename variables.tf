variable "candidate" {
  description = "Candidate name"
  default = "komali_msproject"
}

variable "vpc_cidr" {
  description = "CIDR to use for the VPC"
  default = "10.100.0.0/16"
}
variable "minsize" {
  description = "minimum number of instances"
  default = "0"
}
variable "maxsize" {
  description = "max number of instances"
  default = "3"
}
variable "dessize" {
  description = "desired number of instances"
  default = "0"
}
