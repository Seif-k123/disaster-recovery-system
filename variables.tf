variable "project_name" {
  type    = string
  default = "dr-system"
}

variable "primary_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  
}

variable "public_subnet_cidr" {
  type    = string
  
}

variable "private_subnet_cidr" {
  type    = string
  
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "my_ip" {
  type = string
}

variable "db_username" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}
