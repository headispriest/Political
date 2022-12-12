extends Control

export (NodePath) var lrPath
export (NodePath) var alPath
export (NodePath) var pcPath
 
func _ready():
	$Control/HSliderLR.min_value = $Control/SpinBoxLR.min_value
	$Control/HSliderLR.max_value = $Control/SpinBoxLR.max_value
	
	$Control/HSliderLR.share($Control/SpinBoxLR)
	
	$Control2/HSliderAL.min_value = $Control2/SpinBoxAL.min_value
	$Control2/HSliderAL.max_value = $Control2/SpinBoxAL.max_value
	
	$Control2/HSliderAL.share($Control2/SpinBoxAL)
	
	$Control3/HSliderPC.min_value = $Control3/SpinBoxPC.min_value
	$Control3/HSliderPC.max_value = $Control3/SpinBoxPC.max_value
	
	$Control3/HSliderPC.share($Control3/SpinBoxPC)

