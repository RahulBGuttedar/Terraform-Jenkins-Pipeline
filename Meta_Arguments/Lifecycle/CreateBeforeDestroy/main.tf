

resource "local_file" "example" {
	filename = "${path.module}/cbd.txt"
	content = "Changed the  Original file"

lifecycle {
	create_before_destroy = true
	}	
}


