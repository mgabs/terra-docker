provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# create docker volume resource

# create docker network resource

# create db container
resource "docker_container" "db" {
  name    = "db"
  image   = "mysql:5.7"
  restart = "always"
  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_ALLOW_EMPTY_PASSWORD=true",
    "MYSQL_RANDOM_ROOT_PASSWORD=${var.mysql_root_password}",
  ]

}

# create wordpress container
resource "docker_container" "wordpress" {
  name    = "wordpress"
  image   = "wordpress:latest"
  restart = "always"
  ports {
    internal = "80"
    external = "8080"
  }
}
