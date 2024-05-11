extends Node2D

var f
var angle
var direction = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	f = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$RigidBody2D.linear_velocity.y = (cos(angle) * f)
	$RigidBody2D.linear_velocity.x = -(sin(angle) * f)
	print(rad_to_deg(angle))
	print($RigidBody2D.global_position)
	pass

