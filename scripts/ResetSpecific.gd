extends Button

export(NodePath) var buttonContainer

export(NodePath) var Economic
export(NodePath) var Authoritarian
export(NodePath) var Progressive

onready var buttons = get_node(buttonContainer)
onready var buttonGroup = buttons.get_node("1").group
onready var EcoNode = get_node(Economic)
onready var AuthNode = get_node(Authoritarian)
onready var ProgNode = get_node(Progressive)

func _pressed():
	var i = buttonGroup.get_pressed_button().name 
	EcoNode.value = 0
	AuthNode.value = 0
	ProgNode.value = 0

