extends MeshInstance

var rotating = false

var prev_mouse_position
var next_mouse_position

func _process(delta):
	
	if(rotating):
		next_mouse_position = get_viewport().get_mouse_position()
		rotate_object_local(Vector3.UP, (next_mouse_position.x - prev_mouse_position.x) *.4 * delta)
		rotate_x((next_mouse_position.y - prev_mouse_position.y) * .4 * delta)
		prev_mouse_position = next_mouse_position


func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if(Input.is_action_just_pressed("Rotate")):
		rotating = true
		prev_mouse_position = get_viewport().get_mouse_position()
	if(Input.is_action_just_released("Rotate")):
		rotating = false
