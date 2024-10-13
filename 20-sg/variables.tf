variable "project_name" {
 default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Terraform   = "true"
    Environment = "dev"
  }
}
variable "mysql_sg_tags" {
  default={
    component= "mysql"
  }
}
variable "frontend_sg_tags" {
  default={
    component= "frontend"
  }
}
variable "backend_sg_tags" {
  default={
    component= "backend"
  }
}
variable "bastion_sg_tags" {
  default={
    component= "bastion"
  }
}
variable "ansible_sg_tags" {
  default={
    component= "ansible"
  }
}

