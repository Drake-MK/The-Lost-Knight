class_name coin
extends Area2D



@export var gamemanager : Node
@onready var animation_player = $AnimationPlayer




# Layer 2 
func _on_body_entered(body):
	print('+1 coin')
	gamemanager.add_coin()
	animation_player.play("pickup")
	
