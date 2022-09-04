extends KinematicBody2D

var motion = Vector2()
var speed = 60
var gravity = 10
var dir = -1

func _process(delta):
	pass
	
func _physics_process(delta):
	motion.x = speed * dir
	if is_on_wall():
		dir *= -1
	if is_on_floor() == false:
		motion.y += gravity
	
	move_and_slide(motion,Vector2.UP)
