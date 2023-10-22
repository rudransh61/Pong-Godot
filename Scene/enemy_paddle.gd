extends RigidBody2D

@export var paddle_speed = 35000000
@export var ball:Ball

var direction = Vector2()

func _get_dir(target):
	if not is_instance_valid(target):
		return
	direction = (target.position - self.position).normalized()

func _physics_process(delta):
	if not is_instance_valid(ball):
		pass
	else:
		position.y = ball.position.y
	print(position.x ,",",position.y)
