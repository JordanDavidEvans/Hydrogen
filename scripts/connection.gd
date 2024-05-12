extends Node2D
signal wrong
signal right
var radiorange = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	radiorange = $state.strength
	if radiorange < 1:
		get_tree().change_scene_to_file("res://levels/noradio.tscn")
	pass


func _on_state_wrong():
	wrong.emit()
	pass # Replace with function body.


func _on_state_right():
	right.emit()
	pass # Replace with function body.
