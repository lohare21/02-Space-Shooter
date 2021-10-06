extends Node2D

var Score = null
var Health = null

var score = 0
var health = 100

func _ready():
	connect("resized", self, "call_wrap_around")

func call_wrap_around():
	get_tree().call_group("wrap_around", "recalculate_wrap_area")

func update_score(s):
	Score = get_node_or_null("/root/Game/HUD_Container/HUD/Score")
	if Score != null:
		score += s
		Score.text = "Score: " + str(score)

func update_health(h):
	Health = get_node_or_null("/root/Game/HUD_Container/HUD/Health")
	health += h
	Health.text = "Health: " + str(health)
	if health <= 0:
		var _scene = get_tree().change_scene("res://Menu/Game Over.tscn")



