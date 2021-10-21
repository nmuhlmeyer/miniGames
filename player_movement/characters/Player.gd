extends KinematicBody2D

var speed = 5000
var gravity = 2000
var velocity= Vector2()

func _physics_process(delta):
	var direction = Vector2.ZERO
	velocity = Vector2()
	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction = direction.normalized()
	print(direction)
	
	if direction != Vector2.ZERO:
		direction += direction * speed * delta
	else:
		direction = direction.move_toward(Vector2.ZERO, delta)
	move_and_slide(direction)
