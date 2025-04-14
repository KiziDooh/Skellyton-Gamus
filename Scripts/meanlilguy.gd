extends Node3D

var dead = true

func _process(delta):
	#telports thing to summon to where your looking when E is pressed and are dead
	if Input.is_key_pressed(KEY_E) and dead == true:
		summon()

func summon():
	position.x = Global.sx
	position.z = Global.sz
	position.y = Global.py
