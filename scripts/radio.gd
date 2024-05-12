extends Line2D

var time = 1
var var1 = 1
var var2 = 1
var multi1 = 1
var multi2 = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	time = time + delta
	var array = []
	for i in range (50):
		array.append(Vector2((200 + i * 20), (200 + sin(i + multi2 + time) * multi1)))
	points = array
	pass


func _on_h_slider_value_changed(value):
	multi1 = value
	pass # Replace with function body.


func _on_v_slider_value_changed(value):
	multi2 = value
	pass # Replace with function body.
	
