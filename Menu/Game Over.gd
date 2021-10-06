extends Control



func _on_Button_pressed():
	get_tree().change_scene("res://Game.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")

func _on_Button3_pressed():
	get_tree().quit()

	if (Input.is_action_just_pressed("quit")):
		get_tree().quit()
