

resource "local_file" "example" {
	for_each = var.vm_map
	filename = "${path.module}/${each.key}.txt"
	content = "VM ${each.key} runs OS ${each.value}"
}




