#Provider
provider "aws" {
	region = "${var.aws_region}"
}

resource "aws_instance" "myinstance2" {
	ami = "${var.myimage}"
	instance_type = "${var.instance_type}"

	tags = "${local.common_tags}"

	subnet_id = "subnet-17b00e38"
	security_groups = ["sg-d107de9a"]

	key_name = "teekey102318"
	#key_name = "${var.key}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.root_volume_size}"
  }

  ebs_block_device {
		device_name = "/dev/sdh"
    volume_type = "gp2"
    volume_size = "${var.data_volume_size}"
  }
}
