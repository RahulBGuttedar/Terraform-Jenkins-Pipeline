
resource "local_file" "file1" {
	filename = "${path.module}/file.txt"
	content = "This is file1"
}

resource "local_file" "file2" {
	filename = "${path.module}/file2.txt"
	content = "This is file2"
	depends_on = [local_file.file1, local_file.file3]
}

resource "local_file" "file3" {
	filename = "${path.module}/file3.txt"
	content = "This is file3"
}




