extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$back.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$controlroom/VBoxContainer/mission/Label2.text = str($navscene.distance_to_cargo)
	pass


func _on_controlroom_engine():
	enter_room()
	$engine.visible = true
	$engine.active = true
	$controlroom.visible = false
	pass # Replace with function body.


func _on_controlroom_nav():
	enter_room()
	$navscene.visible = true
	$navscene.in_view = true
	$controlroom.visible = false
	pass # Replace with function body.


func _on_controlroom_rudder():
	enter_room()
	$rudderroom.visible = true
	$rudderroom.active = true
	$controlroom.visible = false
	pass # Replace with function body.

func enter_room():
	$back.visible = true
	pass



func _on_back_pressed():
	$engine.visible = false
	$navscene.in_view = false
	$connection.visible = false
	$engine.active = false
	$navscene.visible = false
	$rudderroom.visible = false
	$connection.visible = false
	$rudderroom.active = false
	$controlroom.visible = true
	$back.visible = false
	pass # Replace with function body.


func _on_controlroom_radio():
	enter_room()
	$controlroom.visible = false
	$connection.visible = true
	pass # Replace with function body.


func _on_connection_wrong():
	pass # Replace with function body.



func _on_engine_overheat():
	pass # Replace with function body.
