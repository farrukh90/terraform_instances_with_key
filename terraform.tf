resource "aws_key_pair" "name" {
  	key_name = "name"
        public_key = ""       or    "${file("public_key")}"
}
esource "aws_instance" "my-instance" {
  ami           = "${var.awsami}"
  instance_type = "${var.micro}"
  key_name      = "${aws_key_pair.somekey.key_name}"
  user_data     = "${file("user_data")}"
  count		= "${var.instance_count}"
  tags {
    Environment = "dev-${"count.index +1}"
  }
}
