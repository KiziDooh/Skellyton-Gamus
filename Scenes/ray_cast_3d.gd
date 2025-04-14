extends RayCast3D
func _process(delta):
	if is_colliding():
		Global.sx = get_collision_point().x
		Global.sz = get_collision_point().z
#		

	#print(get_collider())
		#print(get_collision_point().x)
		#Global.get = get_collider()
		#Global.yup = true
		#print(Global.get.name)
	#else:
		#Global.yup = false
