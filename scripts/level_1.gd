extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_controlroom_engine():
	pass # Replace with function body.


func _on_controlroom_nav():
	pass # Replace with function body.


func _on_controlroom_rudder():
	$rudderroom.visible = true
	$controlroom.visible = false
	pass # Replace with function body.

func enter_room():
	pass
