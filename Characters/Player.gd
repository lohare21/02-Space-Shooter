extends KinematicBody2D

const SPEED := 600

func _physics_process(delta: float):
	var velocity := Vector2()
	
	if (Input.is_action_pressed("left")):
		velocity.x = -SPEED
	if (Input.is_action_pressed("right")):
		velocity.x = SPEED

# warning-ignore:return_value_discarded
	move_and_collide(velocity * delta)
	
func _unhandled_key_input(event: InputEventKey):
	if (event.is_action_pressed("shoot")):
		$LaserWeapon.shoot()
		
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Menu/Pause.tscn")

	if (Input.is_action_just_pressed("quit")):
		get_tree().quit()
