variable "vpc_id" {
  type = string
}

variable "public_key" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "server_name" {
  type    = string
  default = "Apache Example Server"
}

variable "ami_id" {
  type = string
}