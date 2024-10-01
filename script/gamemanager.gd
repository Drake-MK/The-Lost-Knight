extends Node
var max_score = 8
var score = 0

func add_coin():
	pass
	score+= 1
	print(score)
	if score == max_score:
		get_tree().change_scene_to_file("res://scene/Level 2/level_2.tscn")
