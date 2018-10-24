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
