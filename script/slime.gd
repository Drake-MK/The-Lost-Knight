extends Node2D

const speed = 30
var direction = 1
@onready var ray_cast__rigt = $"RayCast_ rigt"
@onready var ray_cast__left = $"RayCast_ left"
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast__left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	if ray_cast__rigt.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += speed * delta * direction
