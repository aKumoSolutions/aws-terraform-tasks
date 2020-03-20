output "jenkins-server-ip" {
    value = aws_instance.demo-jenkins.public_ip
}

output "bench-time" {
    value = "until_the_bootstrap_finishes_enjoy_your_time."
}