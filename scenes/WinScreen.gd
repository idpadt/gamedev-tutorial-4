extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var level_scene = get_tree().get_root().get_child(0)
	if level_scene.get_name() == "Level1":
		get_tree().change_scene("res://scenes/Level2.tscn")
	if level_scene.get_name() == "Level2":
		get_tree().change_scene("res://scenes/Level1.tscn")
