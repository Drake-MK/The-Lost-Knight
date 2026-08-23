class_name gamemanager
extends Node

@export var next_level: PackedScene
@export var coins: Node
@export var player: CharacterBody2D

var score = 0
var max_score = 8

func load_next_level() -> void:
	if next_level:
		get_tree().change_scene_to_packed(next_level)
	else:
		printerr("Next level scene is not set!")


func add_coin():
	pass
	score+= 1
	print(score)
	if score == max_score:
		load_next_level()
