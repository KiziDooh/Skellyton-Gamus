extends Node3D

var dead = false

func _process(delta):
	#temp way to kill
	if Global.yup == true:
		if Global.get == "wow" and Input.is_key_pressed(KEY_E):
			dead = true
	
	#telports thing to summon to where your looking when E is pressed and are dead
	if Input.is_key_pressed(KEY_E) and dead == true:
		summon()

func summon():
	position.x = Global.sx
	position.z = Global.sz
	position.y = Global.py
