extends KinematicBody2D

var VP = null
var velocity = Vector2.ZERO

func _ready():
	VP = get_viewport().size
	velocity = Vector2(randf()*10,0).rotated(randf()*2*PI)
	
func _physics_process(delta):
	position += velocity
	position.x = wrapf(position.x,0,VP.x)
	position.y = wrapf(position.y,0,VP.y)
