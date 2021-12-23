extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var enemy = Vector2(5,5)
var hero = Vector2(10,5)
var direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	direction = hero - enemy
	enemy += direction
	print(enemy)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
