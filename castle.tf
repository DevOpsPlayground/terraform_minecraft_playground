locals {
  origin = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z + 60,
  }

  towers = {
    material = "cobblestone",
    distance = 15,
    width    = 6,
    height   = 10,
    length   = 6
  }

  wall = {
    material = "cobblestone",
    width    = 1,
    height   = 3,
    length   = 2
  }
}

module "tower1" {
  source = "./square"

  material = local.towers.material

  position = {
    x = local.origin.x,
    y = local.origin.y,
    z = local.origin.z
  }

  dimensions = {
    width  = local.towers.width,
    height = local.towers.height,
    length = local.towers.length
  }
}

module "wall12" {
  source = "./square"

  material = local.wall.material

  position = {
    x = local.origin.x + floor(local.towers.width / 2),
    y = local.origin.y,
    z = local.origin.z + floor(local.towers.length / 2)
  }

  dimensions = {
    width  = local.towers.distance + local.towers.width,
    height = ceil(local.towers.height * 2 / 3)
    length = local.towers.distance + local.towers.width
  }
}

module "tower2" {
  source = "./square"

  material = local.towers.material

  position = {
    x = local.origin.x + local.towers.width + local.towers.distance,
    y = local.origin.y,
    z = local.origin.z
  }

  dimensions = {
    width  = local.towers.width,
    height = local.towers.height,
    length = local.towers.length
  }
}

module "tower3" {
  source = "./square"

  material = local.towers.material

  position = {
    x = local.origin.x,
    y = local.origin.y,
    z = local.origin.z + local.towers.length + local.towers.distance
  }

  dimensions = {
    width  = local.towers.width,
    height = local.towers.height,
    length = local.towers.length
  }
}

module "tower4" {
  source = "./square"

  material = local.towers.material

  position = {
    x = local.origin.x + local.towers.width + local.towers.distance,
    y = local.origin.y,
    z = local.origin.z + local.towers.length + local.towers.distance
  }

  dimensions = {
    width  = local.towers.width,
    height = local.towers.height,
    length = local.towers.width
  }
}
