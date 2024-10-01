extends Area2D
@onready var gamemanager = %gamemanager


@onready var animation_player = $AnimationPlayer





func _on_body_entered(body):
	print('+1 coin')
	gamemanager.add_coin()
	animation_player.play("pickup")
	
