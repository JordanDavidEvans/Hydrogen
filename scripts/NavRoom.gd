extends Control
signal nav
signal rudder
signal engine
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_nav_button_pressed():
	nav.emit()
	print("nav")
	pass # Replace with function body.

func _on_rudder_button_pressed():
	rudder.emit()
	print("rudder")
	pass # Replace with function body.

func _on_engine_button_pressed():
	engine.emit()
	print("engine")
	pass # Replace with function body.
