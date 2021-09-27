extends KinematicBody2D

const SPEED := 600

var Weaon = preload("res://Weapon.tscn")

func _physics_process(delta: float) -> void:
	var velocity := Vector2()
	
	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
	
	move_and_collide(velocity * delta)
	

