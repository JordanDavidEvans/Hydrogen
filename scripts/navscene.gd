extends Control

var current_speed = 0
var current_heading = 0
var in_view = false
var distance_to_cargo
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	distance_to_cargo = ($ship.global_position.distance_to($map.get_pos()))
	$map.f = current_speed
	$map.angle = current_heading
	pass
	


