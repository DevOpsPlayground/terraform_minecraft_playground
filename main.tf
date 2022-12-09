// Create a Minecraft block
resource "minecraft_block" "stone" {
  material = "minecraft:stone"

  position = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z,
  }
}

// Create a cube out of Minecraft blocks
module "cube" {
  source = "./cube"

  material = "cobblestone"

  position = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z + 10,
  }

  dimensions = {
    width  = 5,
    length = 5,
    height = 5
  }
}

// Create a square out of Minecraft blocks
module "square" {
  source = "./square"

  material = "cobblestone"

  position = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z + 20,
  }

  dimensions = {
    width  = 5,
    length = 5,
    height = 5
  }
}

// Create a panda out of Minecraft blocks
module "panda" {
  source   = "./panda"
  material = "minecraft:stone"

  position = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z + 40,
  }
}

// Test minecraft words module
module "minecraft_words" {
  source   = "git@github.com:massimilianovallascas/terraform_module_minecraft_words.git"
  material = "minecraft:stone"
  string   = "abcdefghijklmnopqrstuvwxyz0123456789+-*:=.,;!?\"'\\|/_~<>()[]{}"

  position = {
    x = var.position.x,
    y = var.position.y,
    z = var.position.z + 60,
  }
}
