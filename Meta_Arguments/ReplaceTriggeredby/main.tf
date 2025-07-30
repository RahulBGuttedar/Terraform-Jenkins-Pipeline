

resource "local_file" "config" {
  filename = "${path.module}/config.txt"
  content  = "Configuration updated content"
}

resource "local_file" "app" {
  filename = "${path.module}/app.txt"
  content  = "App depends on config"

  lifecycle {
    replace_triggered_by = [local_file.config]
  }
}



