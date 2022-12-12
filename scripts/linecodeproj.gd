extends MeshInstance

onready var Y = get_parent().Auth
onready var X = get_parent().Eco
onready var Z = get_parent().Prog

func _process(delta):
	Y = get_parent().Auth
	X = get_parent().Eco
	Z = get_parent().Prog
	if self.name == "lineY2":
		self.scale.y = Y*1.75
		translation.y = -Y*1.75
		translation.x = 0
		translation.z = Z*3.50
	if self.name == "lineX2":
		self.scale.x = X*1.75
		translation.x = -X*1.75
		translation.y = 0
		translation.z = Z*3.50
	if self.name == "lineZ2":
		self.scale.z = Z*1.75
		translation.z = Z*1.75
		translation.x = 0
		translation.y = -Y*3.50
		
		
		
	if self.name == "lineY3":
		self.scale.y = Y*1.75
		translation.y = -Y*1.75
		translation.x = -X*3.50
		translation.z = 0
	if self.name == "lineX3":
		self.scale.x = X*1.75
		translation.x = -X*1.75
		translation.y = -Y*3.50
		translation.z = 0
	if self.name == "lineZ3":
		self.scale.z = Z*1.75
		translation.z = Z*1.75
		translation.x = -X*3.50
		translation.y = 0
