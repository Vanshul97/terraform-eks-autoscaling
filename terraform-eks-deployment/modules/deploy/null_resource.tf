resource "null_resource" "deploy" {
  # Triggers this resource to run whenever any files in the specified directory changes
  triggers = {
    files = "${path.module}/modules/**/*"
  }

  provisioner "local-exec" {
    command = "terraform apply -auto-approve"
  }
}
