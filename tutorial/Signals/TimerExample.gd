extends Node2D

signal my_signal(value, other_value)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	$Timer.wait_time = 0.1
	$Timer.connect("timeout", self, "_on_Timer_timeout")
	self.connect("my_signal", self, "_on_TimeExample_my_signal")
	emit_signal("my_signal")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$Sprite.visible = !$Sprite.visible
	
func _on_TimeExample_my_signal():
	print('ready')
