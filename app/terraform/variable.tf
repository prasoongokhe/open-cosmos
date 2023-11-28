variable "ami" {
    default = "ami-0f926b5ee133399f0"  
}

variable "instance_type" {
    default = "t3.micro"
}

variable "key_name" {
    default = "prasoon-test-ec2-1"
}

variable "vpc_cidr" {
    default = "10.1.0.0/16"
}

variable "subnet_cidr" {
    default = "10.1.1.0/24"
}

variable "subnet_availability_zone" {
    default = "eu-north-1a"
}