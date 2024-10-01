extends Area2D

@onready var gamemanager_3 = %gamemanager3



@onready var animation_player = $AnimationPlayer





func _on_body_entered(body):
	print('+1 coin')
	gamemanager_3.add_coin3()
	animation_player.play("pickup")
	
