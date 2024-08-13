extends Area2D


@export var lerp_speed: float = 0.07 # speed
@onready var following_player: bool = false

func _ready():
	pass

func _process(delta):
	if following_player:
		var player_position: Vector2 = PlayerPosition.position
		var player_direction = PlayerPosition.direction

		var x_pos = 20 if player_direction == -1 else -20
		var target_position: Vector2 = player_position + Vector2(x_pos, -8)

		self.set_global_position(self.global_position.lerp(target_position, lerp_speed))


func _on_body_entered(body):
	following_player = true
