output "security_group" {
  value = "${aws_security_group.doom.id}"
}

output "bucket_name" {
  value = "${aws_s3_bucket.data.id}"
}
