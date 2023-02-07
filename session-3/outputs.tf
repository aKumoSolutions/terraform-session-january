# A root module can use outputs to print certain values in the CLI output after running terraform apply.

output "instance_ip_address" {
  value       =  aws_instance.main.public_ip
  description = "The public IP address of main EC2 instance"
}
output "instance_volume_id" {
  value       =  aws_instance.main.volume_id
  description = "The volume id of main EC2 instance"
}