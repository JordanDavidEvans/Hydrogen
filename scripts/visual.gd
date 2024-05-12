extends Node

var spectrum: AudioEffectInstance = AudioServer.get_bus_effect_instance(0,0)  
var WIDTH = 500
var VU_COUNT = 10
var FREQ_MAX = 100
var counter = 1
var MIN_DB = 0
var HEIGHT = 500

func _process(_delta):
		var w = WIDTH / VU_COUNT
		var prev_hz = 0
		for i in range(1, VU_COUNT+1):
			var hz = i * FREQ_MAX / VU_COUNT;
			var magnitude: float = spectrum.get_magnitude_for_frequency_range(prev_hz, hz).length()
			if counter > 5:
				$VolumeMeter.frame = linear_to_db(round(clamp(magnitude * 1000000,0,32)*0.5))
				counter = 0
			var energy = clamp((MIN_DB + linear_to_db(magnitude)) / MIN_DB, 0, 1)
			var height = energy * HEIGHT
			prev_hz = hz
			counter += 1  
