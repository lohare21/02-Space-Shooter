extends KinematicBody2D

var Enemy_Bullet = load("res://Enemy_Bullet/Enemy_Bullet.tscn")
onready var Bullets = get_node("/root/Game/Bullets")

func _physics_process(delta):
	pass

func die():
	queue_free()
	


func _on_Shoot_timeout():
	var enemy_bullet = Enemy_Bullet.instance()
	enemy_bullet.position = position
	Bullets.add_child(enemy_bullet)
