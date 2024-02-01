variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"    
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "tags" {
    type = map
    default = {
        Name = "HelloTerraform"
        Project = "Roboshop"
        Enviroment = "Dev"
        Component = "Web"
        Terraform = "True"  # Means instance created using terraform
        }
}

variable "sg_name" {
    type = string
    default = "roboshop-all"
}

variable "sg_description" {
    type = string
    default = "Allow roboshop inbound traffic"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}