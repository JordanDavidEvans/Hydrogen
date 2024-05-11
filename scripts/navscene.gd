extends Control

var current_speed = 0
var current_heading = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$map.f = current_speed
	$map.angle = current_heading
	print()
	pass
	


