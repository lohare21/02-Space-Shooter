extends Area2D

var speed = 2
var velocity = Vector2.ZERO

func _physics_process(delta):
	position += velocity
	velocity.y -= speed
	if position.y < -20:
		queue_free()

func _on_Bullet_body_entered(body):
	body.die()
	queue_free()
