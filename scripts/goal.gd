extends Line2D


var time = 1
var var1 = 1
var var2 = 1
var multi1 = 22
var multi2 = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	time = time + delta
	var array = []
	for i in range (50):
		array.append(Vector2((200 + i * 20), (200 + sin(i + time) * multi1)))
	points = array
	pass
	

