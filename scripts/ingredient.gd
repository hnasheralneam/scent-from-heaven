extends CharacterBody2D


@export var lerp_speed: float = 0.03 # Speed of interpolation

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Access singleton variables
	var player_position: Vector2 = PlayerPosition.position
	var player_direction: float = PlayerPosition.direction

	# Determine offset based on direction
	var offset: Vector2
	if player_direction > 0:
		offset = Vector2(1, 0)  # Move right
	elif player_direction < 0:
		offset = Vector2(-1, 0) # Move left
	else:
		offset = Vector2.ZERO    # No movement

	# Calculate target position
	var target_position: Vector2 = player_position + offset + Vector2(20, -8)

	self.set_global_position(self.global_position.lerp(target_position, lerp_speed))



func _on_body_entered(body):
	self.reparent(body)
	print("collision")
