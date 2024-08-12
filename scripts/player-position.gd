extends Node

var position: Vector2 = Vector2.ZERO
var direction: int = 1 # 1 is right -1 is left

func set_position(new_position):
	position = new_position
	print("player at " + str(position))

func get_position():
	return position
