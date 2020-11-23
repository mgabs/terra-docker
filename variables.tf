# declare any input variables
# MYSQL_ROOT_PASSWORD, MYSQL_ALLOW_EMPTY_PASSWORD and MYSQL_RANDOM_ROOT_PASSWORD
variable "mysql_root_password" {
  type    = string
  default = "mysql"
}
variable "mysql_random_root_password" {
  type    = string
  default = "random"
}
variable "mysql_db_username" {
  type    = string
  default = "mysql"
}
# # resources
# MYSQL_ROOT_PASSWORD        = "mysql"
# MYSQL_ALLOW_EMPTY_PASSWORD = "true"
# MYSQL_RANDOM_ROOT_PASSWORD = "random"
