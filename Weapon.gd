extends Node2D

var laser_scene := load("res://Laser.tscn")

func shoot():
	var laser = laser_scene.instance()
	laser.global_position = self.gloabal_position
