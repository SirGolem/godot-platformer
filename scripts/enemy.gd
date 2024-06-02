extends Node2D

const SPEED = 45

@onready var sprite = $AnimatedSprite2D
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight

var direction = 1

func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1
		sprite.flip_h = true
		
	position.x += SPEED * direction * delta
