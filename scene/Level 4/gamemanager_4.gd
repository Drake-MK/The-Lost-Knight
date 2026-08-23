extends  gamemanager


@export var teleport_zone_node : Node
var TeleportZones

func _ready() -> void:
		score = 0
		max_score = coins.get_child_count()

		TeleportZones = teleport_zone_node.get_children()

	
