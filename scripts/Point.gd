extends MeshInstance

var Auth = 0
var Eco = 0
var Prog = 0

func _process(delta):
	var compass = Vector3(Eco/10, Auth/10, Prog/10)
	translation.x = compass.x
	translation.y = compass.y
	translation.z = -compass.z


