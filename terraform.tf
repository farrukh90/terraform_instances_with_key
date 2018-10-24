
resource "aws_key_pair" "name" {
  	key_name = "name"
        public_key = ""       or    "${file("public_key")}"
}
resource "aws_instance" "my-instance" {
	ami	=	"ami-0b59bfac6be064b78"
	instance_type	=	"t2.micro"
        key_name = "${aws_key_pair.name.name}"
	tags {
	NAME = ""
	}
}