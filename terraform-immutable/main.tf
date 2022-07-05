module "app-module" {
  source           = "github.com/ChaitanyaChandra/terraform-immutable-app-module"
  INSTANCE_COUNT   = var.INSTANCE_COUNT
  INSTANCE_TYPE    = var.INSTANCE_TYPE
  COMPONENT        = var.COMPONENT
  ENV              = var.ENV
  APP_VERSION      = var.APP_VERSION
  APP_PORT         = 80
  LB_RULE_PRIORITY = 200
  LB_PRIVATE       = false
  MIN_SIZE         = var.MIN_SIZE
  MAX_SIZE         = var.MAX_SIZE
}
