extends Control


func _input(event):
	if event is InputEventKey:
		_start_game()

func _start_game():
	get_tree().change_scene_to_file("res://scene/game.tscn")
