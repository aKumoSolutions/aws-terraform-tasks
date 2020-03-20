resource "null_resource" "demo" {
    provisioner "local-exec" {
    //   source = "script.sh"
    //   destination = "/home/centos/AkumoSolutions/docker-Image/script.sh"
    command = "bash provisioner.sh"

 }
} 