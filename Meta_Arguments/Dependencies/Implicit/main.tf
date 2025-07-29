

resource "local_file" "source_file" {
	filename = "${path.module}/source.txt"
	content = "Content from source file"
}

resource "local_file" "copy_file" {
	filename = "${path.module}/copy.txt"
	content = "Copied Content: ${local_file.source_file.content}"
}


