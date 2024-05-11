extends Control
signal power
signal cooling
var heat
var active = false
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
