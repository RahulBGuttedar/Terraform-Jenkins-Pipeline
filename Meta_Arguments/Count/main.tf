

resource "local_file" "example" {
	count = length(var.vm_name)
	filename = "${path.module}/${var.vm_name[count.index]}.txt"
	content = "This file is for ${var.vm_name[count.index]}"
}
