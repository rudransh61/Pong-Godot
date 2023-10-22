extends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 20
@export var speed_multilier = 1.02

var ball_speed = initial_ball_speed


func _physics_process(delta):
	var collision = move_and_collide(velocity*ball_speed*delta)
	if(collision):
		#collision hua
		velocity = velocity.bounce(collision.get_normal())*speed_multilier


func _ready():
	randomize()
	velocity.x = [-1,+1][randi()%2]*initial_ball_speed
	velocity.y = [-0.8,+0.8][randi()%2]*initial_ball_speed
	
