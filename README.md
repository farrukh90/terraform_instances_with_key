# terraform_instances_with_key


1. Create instance with terraform features
2. Create instance from UI and use the key next time
3. Create instance use the public key inside the file 
4. Create an instances using:
resource "aws_key_pair" "my_key" {
  	key_name = "my_key"
        public_key = ""
  }
 5. Create an instance using the 
 key_name = "${file("public_key"}"
 
 7. Create an instance with userdata
 
         user_data = "${file("user_data")}"



8. Create an instance with vars inside the file like this

variable "ami" {
  default = "ami-oololol"
  }
and use it inside the instance block 

resource "aws_instance" "my-instance" {
	ami	=	"${var.ami}"
  
  
9. Create a vars.tf file with the ami names from AWS 
variable "awsami" {
  default = "ami-slsldfldfld" 
}

variable "centos7" {
  default = "centos-ami-dlldldl"
  }
  
use it inside the file 
resource "aws_instance" "my-instance" {
	ami	=	"${var.ami}"
  
  
 10. 
 Create a variable with
 variable "micro" {
  default = "t2.micro"
  }
  
variable "awsami" {
	default = "ami-0b59bfac6be064b78"
}
variable "micro" {
	default	= "t2.micro"
}
variable "dev" {
	default = "Dev_Environment"
}



 use it inside the file 
 
 
 11. Use count option to create multiple instances on aws 
 resource "aws_instance" "my-instance" {
	ami	=	"${var.ami}"
	instance_type	=	"t2.micro"
        key_name = "{var.my_key}"
        user_data = "${file("user_data")}"
        count = 4
	}
 
 
 
 
 
