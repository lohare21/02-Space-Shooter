extends KinematicBody2D

func _physics_process(delta):
	pass
	
func _die():
	queue_free()
