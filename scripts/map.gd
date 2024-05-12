extends Node2D

var f
var angle
var direction = Vector2(0,0)
var mission_pos = Vector2(0,0)
var zero = Vector2(0,0)
var distance_to_mission = 0

var inside = false

signal outsides
signal insides

var cargo = 20
# Called when the node enters the scene tree for the first time.
func _ready():
	mission_pos.x = randf_range(-500, 500)
	mission_pos.y = randf_range(-500, 500)
	$RigidBody2D/mission.global_position = mission_pos
	f = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if cargo < 1:
		get_tree().change_scene_to_file("res://levels/win.tscn")
	if inside == true:
		cargo -= 1 * delta
		$RigidBody2D/mission/cargo.text = "Cargo remaining: " + str(snapped(cargo, 1))
	$RigidBody2D.linear_velocity.y = (cos(angle) * f)
	$RigidBody2D.linear_velocity.x = -(sin(angle) * f)
	pass


func _on_area_2d_body_entered(body):
	print("inside")
	inside = true
	insides.emit()
	pass # Replace with function body.
	
	


func get_pos():
	return $RigidBody2D/mission.global_position


func _on_mission_body_exited(body):
	print("outside")
	inside = false
	outsides.emit()
	pass # Replace with function body.
