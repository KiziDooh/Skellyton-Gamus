extends RayCast3D
func _process(delta):
	if is_colliding():
		Global.get = get_collider().name
		Global.yup = true
		print(Global.get)
	else:
		Global.yup = false
