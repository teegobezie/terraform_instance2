output "public-ip" {
  value = "${aws_instance.myinstance5.public_ip}"
}

output "hostname" {
  value = "${aws_instance.myinstance5.tags.Name}"
}
