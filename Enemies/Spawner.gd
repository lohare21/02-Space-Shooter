extends Node

var asteroid_scene = load("res://Objects/Asteroid.tscn")

func _ready():
	_spawn_asteroid()
	
func _spawn_asteroid():
	var asteroid = asteroid_scene.instance()

	_set_asteroid_position(asteroid)
	
	add_child(asteroid)

func _set_asteroid_position(asteroid):
	var rect = get_viewport().size
	asteroid.position = Vector2(rand_range(0, rect.x), -100)
	
func _set_asteroid_trajectory(asteroid):
	asteroid.angular_velocity = rand_range(-4, 4)
	asteroid.angular_damp = 0
	asteroid.linear_velocity = Vector2(rand_range(-300, 300), 300)
	
func _on_Timer_timeout():
	_spawn_asteroid()
