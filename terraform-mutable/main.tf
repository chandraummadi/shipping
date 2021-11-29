module "shipping" {
  source              = "git::https://github.com/chandraummadi/terraform-mutable.git//app-module"
  INSTANCE_TYPE       = var.INSTANCE_TYPE
  ENV                 = var.ENV
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  COMPONENT           = "shipping"
  PORT                = 8080
  IS_PRIVATE_LB       = true
  LB_RULE_PRIORITY    = 103
}

output "INSTANCE_IDS" {
  value = module.shipping.INSTANCE_IDS
}