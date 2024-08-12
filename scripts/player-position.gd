extends Node

var position: Vector2 = Vector2.ZERO
var direction: int = 1 # 1 is right -1 is left

func set_position(new_position):
	position = new_position


func get_position():
	return position

func set_direction(new_direction):
	direction = new_direction

func get_direction():
	return direction
