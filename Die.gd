extends Control


func _ready():
	pass


func _on_Button_pressed():
	Global.health = 100
	Global.score = 0
	var _scene = get_tree().change_scene("res://Game.tscn")
	
	

func _on_Button2_pressed():
	get_tree().quit()
