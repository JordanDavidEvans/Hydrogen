extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "CHECK RADIO"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_connection_wrong():
	text = "ERROR"
	pass # Replace with function body.


func _on_connection_right():
	text = "OK!"
	pass # Replace with function body.
