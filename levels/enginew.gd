extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "CHECK ENGINE"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_status_cools():
	text = "COOLING"
	pass # Replace with function body.


func _on_status_heats():
	text = "HEATING"
	pass # Replace with function body.
