extends MeshInstance

onready var Y = get_parent().Auth
onready var X = get_parent().Eco
onready var Z = get_parent().Prog

func _process(delta):
	if self.name == "lineY":
		Y = get_parent().Auth
		self.scale.y = Y*1.75
		translation.y = -Y*1.75
	if self.name == "lineX":
		X = get_parent().Eco
		self.scale.x = X*1.75
		translation.x = -X*1.75
	if self.name == "lineZ":
		Z = get_parent().Prog
		self.scale.z = Z*1.75
		translation.z = Z*1.75
