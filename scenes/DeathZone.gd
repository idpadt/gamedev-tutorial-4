extends Area2D


#onready var win_screen = get_tree().get_node
onready var lose_screen = get_node("res://scenes/LoseScreen.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DeathZone_body_entered(body):
	if body.get_name() == "Player":
		get_tree().get_root().get_child(0).player_lose()
	
	if body.is_in_group("Fishes") or body.is_in_group("Slimes"):
		body.queue_free()
