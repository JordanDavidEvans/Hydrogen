extends Node
var power
var temp
var pos = Vector2(0,0)
var target_temp
var heat
var cooling

# Called when the node enters the scene tree for the first time.
func _ready():
	temp = 50
	target_temp = 50
	heat = 0
	cooling = 0.5
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if temp > target_temp:
		heat += (( 1 * delta ) / cooling )
		$"../engine".heat = heat
	if temp < target_temp:
		heat -= (( 1 * delta ) * cooling )
		$"../engine".heat = heat
	pass


func _on_engine_power(v):
	temp = v
	print(heat)
	pass # Replace with function body.




func _on_engine_cooling(v):
	cooling = v
	pass # Replace with function body.
