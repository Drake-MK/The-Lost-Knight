extends Area2D

@onready var gamemanager_2 = %gamemanager2

@onready var animation_player = $AnimationPlayer





func _on_body_entered(body):
	print('+1 coin')
	gamemanager_2.add_coin2()
	animation_player.play("pickup")
	
