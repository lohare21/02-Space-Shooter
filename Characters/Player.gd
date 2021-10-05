extends KinematicBody2D

const SPEED := 600

func _physics_process(delta: float) -> void:
	var velocity := Vector2()
	
	if (Input.is_action_pressed("left")):
		velocity.x = -SPEED
	if (Input.is_action_pressed("right")):
		velocity.x = SPEED
	if (Input.is_action_pressed("up")):
		velocity.y = -SPEED
	if (Input.is_action_pressed("down")):
		velocity.y = SPEED
		
	move_and_collide(velocity * delta)
	
func _unhandled_key_input(event: InputEventKey) -> void:
	if (event.is_action_pressed("shoot")):
		$LaserWeapon.shoot()
