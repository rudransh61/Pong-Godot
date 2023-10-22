extends RigidBody2D

@export var speed = 600
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	
	var movement = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		movement = Vector2.UP
	if Input.is_action_pressed("ui_down"):
		movement = Vector2.DOWN
		
	linear_velocity = movement*speed*delta/delta
		
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

