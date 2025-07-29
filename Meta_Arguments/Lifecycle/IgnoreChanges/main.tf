
resource "local_file" "example" {
	filename = "${path.module}/ignored.txt"
	content = "This is initial content changed after updating"

lifecycle {
	ignore_changes = [content]
	}
}



