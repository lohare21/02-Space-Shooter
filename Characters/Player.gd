extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 5
var Bullet1 = load("res://Bullets/Bullet1.tscn")
var Bullet2 = load("res://Bullets/Bullet2.tscn")
onready var Bullets = get_node("/root/Game/Bullet")

func _ready():
	pass
	
func _physics_process(delta):
	velocity += get_input()*speed
	position += velocity 
	if position.x >= 1024:
		velocity = Vector2.ZERO
		position.x = 1024
	if position.x <= 0:
		velocity = Vector2.ZERO
		position.x = 0
		
	if Input.is_action_just_pressed("shoot1"):
		var bullet1 = Bullet1.instance()
		bullet1.position = position + Vector2(0, -30)
		Bullets.add_child(bullet1)
	if Input.is_action_just_pressed("shoot2"):
		var bullet2 = Bullet2.instance()
		bullet2.position = position + Vector2(0, -30)
		Bullets.add_child(bullet2)


func get_input():
	var input_vector = Vector2.ZERO
	if Input.is_action_just_pressed("left"):
		input_vector += Vector2(-1,0)
	if Input.is_action_just_pressed("right"):
		input_vector += Vector2(1,0)
	return input_vector
