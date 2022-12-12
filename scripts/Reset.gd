extends Button

export(NodePath) var buttonContainer
export(NodePath) var pointsPath

export(NodePath) var Economic
export(NodePath) var Authoritarian
export(NodePath) var Progressive

onready var points = get_node(pointsPath)
onready var buttons = get_node(buttonContainer)

onready var EcoNode = get_node(Economic)
onready var AuthNode = get_node(Authoritarian)
onready var ProgNode = get_node(Progressive)

func _pressed():
	
	for i in range(1, 6):
		buttons.get_node(str(i)).pressed=buttons.get_node(str(i)).default
		if(i==1):
			EcoNode.value = 0
			AuthNode.value = 0
			ProgNode.value = 0
		var point = points.get_node(str(i))
		point.Auth = 0
		point.Prog = 0
		point.Eco = 0
		
