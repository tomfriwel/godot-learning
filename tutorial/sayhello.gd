extends Panel

var i = 0
var j = 0
	
func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed", ['abc'])
	var l = Label.new()
	l.text = 'new child'
	add_child(l)
	
#func _process(delta):
#	i += delta
#	get_node("Label").set_text(str(i))
#
#func _physics_process(delta):
#	j += delta
#	get_node("Label2").text = 'P:' + str(delta)

func _on_Button_pressed(p):
	i+=1
	get_tree().call_group("Labels", "set_text", str(i))
#	print(p)
#	get_node("Label").text = str(i)


