extends Node2D

onready var player = $Player
onready var win_screen = $WinScreen
onready var lose_screen = $LoseScreen
onready var spawner = $FishSpawner

func _ready():
	get_tree().paused = false
	start_spawner()

func kill_fish():
	for children in get_children():
		if children.is_in_group("Fishes"):
			children.queue_free()

func start_spawner():
	yield(get_tree().create_timer(3), "timeout")
	spawner.repeat()
	
func player_lose():
	player.visible = false
	lose_screen.visible = true
	get_tree().paused = true
	
	yield(get_tree().create_timer(2), "timeout")
	
	player.position.x = 130
	player.position.y = 198
	lose_screen.visible = false
	player.visible = true
	get_tree().paused = false
	
	kill_fish()
	start_spawner()

func player_win():
	win_screen.visible = true
	get_tree().paused = true

