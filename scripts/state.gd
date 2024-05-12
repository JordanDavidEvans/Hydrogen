extends Node
var not_new = false

var goal1 = 1
var goal2 = 1
var connected1 = true
var connected2 = true
var coldis1 = 0
var coldis2 = 0
var distance1 = 0
var distance2 = 0
var avg = 0
var strength = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	print("new signal")
	new_signal()
	compare()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	coldis1 = distance1 / 100
	coldis2 = distance2 / 100
	avg = (coldis1 + coldis2) / 2
	$"../AudioStreamPlayer".pitch_scale = 1 + avg
	$"../radio".set_default_color(Color( avg, (1 - avg), 0, 1 ))
	if not_new == false:
		not_new = true
		await get_tree().create_timer(20).timeout
		print("new signal")
		new_signal()
		compare()
		not_new = false
	signal_strength()
	$"../HBoxContainer/Label2".text = str(strength)
	pass

func signal_strength():
	if connected1 == true and connected2 == true:
		if strength < 100:
			strength += 1
		else:
			strength = 100
	else:
		if strength > 0:
			strength -= 0.05
		else:
			strength = 0


func new_signal():
	goal1 = randi_range(1, 10) * 10
	goal2 = randi_range(1, 10) * 10
	$"../goal".multi1 = goal1
	$"../goal".multi2 = goal2
	if $"../radio".multi1 == $"../goal".multi1:
		connected1 == true
	else:
		connected1 == false
	if $"../radio".multi2 == $"../goal".multi2:
		connected2 == true
	else:
		connected2 == false
		

func compare():
	if connected1 == true and connected2 == true:
		$"../AudioStreamPlayer".playing = false
		$"../stable".playing = true
	else:
		$"../AudioStreamPlayer".playing = true
		$"../stable".playing = false
	


func _on_v_slider_value_changed(value):
	distance2 = abs(value - goal2)
	if distance2 == 0:
		connected2 = true
	else:
		connected2 = false
	compare()
	pass # Replace with function body.


func _on_h_slider_value_changed(value):
	distance1 = abs(value - goal1)
	if distance1 == 0:
		connected1 = true
	else:
		connected1 = false
	compare()
	pass
