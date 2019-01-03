extends Node
 
var playerPos = {'world': Vector2(1036.199951, 223.468658)} setget setPlayerPos ,getPlayerPos
var isWorldChanged = false setget setIsWorldChanged, getIsWorldChanged

# @param string name, @param Vector2 value
func setPlayerPos(name, value):
	if typeof(name) == TYPE_STRING && typeof(value) == TYPE_VECTOR2:
		playerPos.name = value

func getPlayerPos():
	return playerPos
	
# @param bool changed
func setIsWorldChanged(changed):
	if typeof(changed) == TYPE_BOOL:
		isWorldChanged = changed

func getIsWorldChanged():
	return isWorldChanged