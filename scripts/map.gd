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
	direction = Vector2(cos(angle * 10), sin(angle * 10))
	$RigidBody2D.linear_velocity.x = direction.x
	$RigidBody2D.linear_velocity.y = direction.y
	print(angle)
	pass

