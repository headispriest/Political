extends Button

export(NodePath) var Economic
export(NodePath) var Authoritarian
export(NodePath) var Progressive
export(NodePath) var AsociatedPoint
export (float, -10, 10, 0.5) var BaseEco
export (float, -10, 10, 0.5) var BaseAuth
export (float, -10, 10, 0.5) var BaseProg

export (bool) var default = false

onready var EcoNode = get_node(Economic)
onready var AuthNode = get_node(Authoritarian)
onready var ProgNode = get_node(Progressive)

onready var point = get_node(AsociatedPoint)

var isPressed = false

func _ready(): 
	pressed = default
	isPressed = default
	if(not default):
		point.scale.x = 0
		point.scale.y = 0
		point.scale.z = 0
func _process(delta):
	if(pressed and not isPressed):
		EcoNode.value = point.Eco
		AuthNode.value = point.Auth
		ProgNode.value = point.Prog
		isPressed = true
		point.scale.x = 0.028
		point.scale.y = 0.028
		point.scale.z = 0.028
	if(pressed and isPressed):
		
		point.Eco = EcoNode.value
		point.Auth = AuthNode.value
		point.Prog = ProgNode.value
	isPressed = pressed
	if (not pressed and point.Eco == 0 and point.Auth == 0 and point.Prog == 0):
		point.scale.x = 0
		point.scale.y = 0
		point.scale.z = 0


