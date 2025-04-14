extends Node3D

var dead = [false,false,false,false]
var wsprt = 0

func _process(delta):
	temp("wow",$evil1,1)
	temp("vow",$evil2,2)
	temp("bow",$evil3,3)
	
	if Input.is_key_pressed(KEY_1) and dead[1] == true:
		wsprt = 1
	if Input.is_key_pressed(KEY_2) and dead[2] == true:
		wsprt = 2
	if Input.is_key_pressed(KEY_3) and dead[3] == true:
		wsprt = 3
	
	#temp way to kill
	#telports thing to summon to where your looking when E is pressed and are dead
#	ray("wow",1)
#	ray("vow",2)
#	ray("bow",3)
#	if Input.is_key_pressed(KEY_E) and dead[1] == true and wsprt == 1:
#		summon($evil1,dead[1])
#	if Input.is_key_pressed(KEY_E) and dead[2] == true:
#		summon($evil2,dead[2])
#	if Input.is_key_pressed(KEY_E) and dead[3] == true:
#		summon($evil3,dead[3])
	

func temp(ow,whichguy,num):
	ray(ow,num)
	if Input.is_key_pressed(KEY_E) and dead[num] == true and wsprt == num:
		summon(whichguy,dead[num])

func ray(raythingy,num):
	if Global.yup == true:
		if Global.get == raythingy:
			if Input.is_key_pressed(KEY_E):
				dead[num] = true
				wsprt = num
		else:
			wsprt = 0
		
func summon(which,whichguy):
	if Input.is_key_pressed(KEY_E) and whichguy == true:
		which.position.x = Global.sx
		which.position.z = Global.sz
		which.position.y = Global.py
