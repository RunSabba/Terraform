#think of output as a print statement

/*output "hello-world" {
  description = "Print a Hello World text output"
  value       = "Hello World"
}

output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "public_url" {
  description = "Public URL for our Web Server"
  value       = "https://${aws_instance.web_server.public_ip}:8080/index.html"
}
*/
output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}

output "aws_region" {
  description = "this is will print out the aws region ive created my infrustructure in. this way i know what region ive deployed in."
  value       = "Your infrustructure has successfully been created in Region ${data.aws_region.current.name}"

}
