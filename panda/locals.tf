locals {
    coordinates = [
      [0, 1, 3], [0, 1, 4], [0, 1, 5], [0, 1, 6], [0, 1, 9], [0, 1, 10], [0, 1, 11], [0, 1, 12],
      [1, 1, 2], [1, 1, 7], [1, 1, 8], [1, 1, 9], [1, 1, 10], [1, 1, 11], [1, 1, 12], [1, 1, 13],
      [2, 1, 1], [2, 1, 9], [2, 1, 10], [2, 1, 11], [2, 1, 12], [2, 1, 13],
      [3, 1, 1], [3, 1, 10], [3, 1, 11], [3, 1, 12], [3, 1, 13],
      [4, 1, 0], [4, 1, 4], [4, 1, 5], [4, 1, 6], [4, 1, 7], [4, 1, 11], [4, 1, 12],
      [5, 1, 0], [5, 1, 4], [5, 1, 6], [5, 1, 7], [5, 1, 8], [5, 1, 11], [5, 1, 12],
      [6, 1, 0], [6, 1, 4], [6, 1, 5], [6, 1, 6], [6, 1, 7], [6, 1, 8], [6, 1, 11],
      [7, 1, 0], [7, 1, 12],
      [8, 1, 0], [8, 1, 3], [8, 1, 12],
      [9, 1, 0], [9, 1, 4], [9, 1, 12],
      [10, 1, 0], [10, 1, 3], [10, 1, 12],
      [11, 1, 0], [11, 1, 12],
      [12, 1, 0], [12, 1, 4], [12, 1, 5], [12, 1, 6], [12, 1, 7], [12, 1, 8], [12, 1, 11],
      [13, 1, 0], [13, 1, 4], [13, 1, 6], [13, 1, 7], [13, 1, 8], [13, 1, 11], [13, 1, 12],
      [14, 1, 0], [14, 1, 4], [14, 1, 5], [14, 1, 6], [14, 1, 7], [14, 1, 11], [14, 1, 12],
      [15, 1, 1], [15, 1, 10], [15, 1, 11], [15, 1, 12], [15, 1, 13],
      [16, 1, 1], [16, 1, 9], [16, 1, 10], [16, 1, 11], [16, 1, 12], [16, 1, 13],
      [17, 1, 2], [17, 1, 7], [17, 1, 8], [17, 1, 9], [17, 1, 10], [17, 1, 11], [17, 1, 12], [17, 1, 13],
      [18, 1, 3], [18, 1, 4], [18, 1, 5], [18, 1, 6], [18, 1, 9], [18, 1, 10], [18, 1, 11], [18, 1, 12],
    ]

  blocks_coordinates = [for block in local.coordinates :
      [var.position.x + block[0], var.position.y + block[1], var.position.z - block[2]]
    ]

  blocks   = [for coordinate in local.blocks_coordinates : zipmap(["x", "y", "z"], coordinate)]
  material = length(regexall("^[a-z]+:[a-z]+$", var.material)) > 0 ? var.material : format("%s:%s", "minecraft", var.material)
}

