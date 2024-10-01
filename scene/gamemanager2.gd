extends Node
var max_score = 7
var score = 0

func add_coin2():
	pass
	score+= 1
	print(score)
	if score == max_score:
		get_tree().change_scene_to_file("res://scene/Level 3/level 3.tscn")


	
	
