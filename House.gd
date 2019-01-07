extends Area2D
export(String, FILE, "*.tscn") var nextWorld

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	
	for body in bodies:
		if body.name == 'Player':
			var position = body.position
			get_tree().change_scene(nextWorld)
			get_node("/root/global").setIsWorldChanged(true)
