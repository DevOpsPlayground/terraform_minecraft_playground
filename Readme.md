# Terraform Minecraft playground

Just a few tests using the [Terraform Minecraft provider](https://registry.terraform.io/providers/HashiCraft/minecraft/0.1.1).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_minecraft"></a> [minecraft](#requirement\_minecraft) | 0.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_minecraft"></a> [minecraft](#provider\_minecraft) | 0.1.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cube"></a> [cube](#module\_cube) | ./cube | n/a |
| <a name="module_minecraft_words"></a> [minecraft\_words](#module\_minecraft\_words) | git@github.com:massimilianovallascas/terraform_module_minecraft_words.git | n/a |
| <a name="module_square"></a> [square](#module\_square) | ./square | n/a |
| <a name="module_tower1"></a> [tower1](#module\_tower1) | ./square | n/a |
| <a name="module_tower2"></a> [tower2](#module\_tower2) | ./square | n/a |
| <a name="module_tower3"></a> [tower3](#module\_tower3) | ./square | n/a |
| <a name="module_tower4"></a> [tower4](#module\_tower4) | ./square | n/a |
| <a name="module_wall12"></a> [wall12](#module\_wall12) | ./square | n/a |

## Resources

| Name | Type |
|------|------|
| [minecraft_block.stone](https://registry.terraform.io/providers/HashiCraft/minecraft/0.1.1/docs/resources/block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_position"></a> [position](#input\_position) | n/a | <pre>object({<br>    x = number<br>    y = number<br>    z = number<br>  })</pre> | <pre>{<br>  "x": 0,<br>  "y": -60,<br>  "z": 0<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->