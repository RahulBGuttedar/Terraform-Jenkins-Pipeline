

module "m1" {
	source = "./config"
	f1 = "m1file.xt"
	c1 = "Content from Module m1"
}

module "m2" {
	source = "./config"
	f1 = "m2file.txt"
	c1 = "Content from Module m2"
}

module "m3" {
	source = "git::https://github.com/RahulBGuttedar/Terraform_module.git"
}


