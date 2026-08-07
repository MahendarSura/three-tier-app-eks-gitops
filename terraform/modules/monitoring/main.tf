resource "null_resource" "monitoring" {

 provisioner "local-exec" {

 command = "echo Installing Prometheus and Grafana"

 }

}
