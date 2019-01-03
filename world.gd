extends Node

func _on_House_worldChanged():
	print('Yeahh!!!')


func _on_world_tree_entered():
	print('Tree Entered')
	var global = get_node("/root/global")
	var isWorldChanged = global.getIsWorldChanged()
	if isWorldChanged == true:
		var playerPos = global.playerPos.world
		$Player.position = playerPos
	
