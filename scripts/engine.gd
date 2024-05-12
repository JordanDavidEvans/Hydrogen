extends Control
signal power
signal cooling
signal overheat
var heat
var active = false
var overheating = false
var warning_start = 60
var warninng_end = 70
# Called when the node enters the scene tree for the first time.
func _ready():
	heat = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$heat.value = heat
	$steam.pitch_scale = ( heat / 50 )
	
	pass


func _on_power_drag_ended(value_changed):
	power.emit($powerpanel/power.value)
	pass # Replace with function body.


func _on_cooling_drag_ended(value_changed):
	cooling.emit($coolingpanel/cooling.value)
	pass # Replace with function body.



func _on_heat_value_changed(value):
	if value > warning_start and value < warninng_end:
		$warning.playing = true
	if value > 95:
		$fire.emitting = true
	pass # Replace with function body.
