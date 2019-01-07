extends Node

func _on_world_tree_entered():
	var global = get_node("/root/global")
	var isWorldChanged = global.getIsWorldChanged()
	if isWorldChanged == true:
		var playerPos = global.getPlayerPos()
		$Player.position = playerPos.world
	
