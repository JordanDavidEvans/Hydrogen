extends Node
var power
var temp
var pos = Vector2(0,0)
var target_temp
var heat
var cooling
var target_heading
signal heats
signal cools
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
		$"../controlroom/enginew"
		$"../engine".heat = heat
		heats.emit()
	if temp < target_temp:
		heat -= (( 1 * delta ) * cooling )
		$"../engine".heat = heat
		cools.emit()
	$"../navscene".current_speed = (heat )
	$"../navscene".current_heading = $"../rudderroom".heading
	if heat > 100:
		get_tree().change_scene_to_file("res://levels/lose.tscn")
	pass


func _on_engine_power(v):
	temp = v
	pass # Replace with function body.




func _on_engine_cooling(v):
	cooling = v
	pass # Replace with function body.
