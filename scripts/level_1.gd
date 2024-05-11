extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$back.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_controlroom_engine():
	enter_room()
	$engine.visible = true
	$controlroom.visible = false
	pass # Replace with function body.


func _on_controlroom_nav():
	enter_room()
	$navscene.visible = true
	$controlroom.visible = false
	pass # Replace with function body.


func _on_controlroom_rudder():
	enter_room()
	$rudderroom.visible = true
	$controlroom.visible = false
	pass # Replace with function body.

func enter_room():
	$back.visible = true
	pass



func _on_back_pressed():
	$engine.visible = false
	$navscene.visible = false
	$rudderroom.visible = false
	$controlroom.visible = true
	$back.visible = false
	pass # Replace with function body.
