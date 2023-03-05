variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}
variable "key_name" {
  default = "testkey"
}

variable "redhat_os" {
  default = "ami-0c9978668f8d55984"
}