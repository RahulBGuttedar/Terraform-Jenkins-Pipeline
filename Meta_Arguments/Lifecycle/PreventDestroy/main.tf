

resource "local_file" "example" {
	filename = "${path.module}/protected.txt"
	content = "Do not delete me"

lifecycle {
	prevent_destroy = true
	}
}

