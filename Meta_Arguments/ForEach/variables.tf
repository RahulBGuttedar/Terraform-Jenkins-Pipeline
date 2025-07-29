
variable "vm_map" {
	type = map(string)
	default = {
		"app1" = "Windows"
		"app2" = "Linux"
		"app3" = "Ubuntu"
	}
}


