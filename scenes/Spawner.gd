extends Node2D

export (PackedScene) var obstacle

func _ready():
	pass

func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + rand_range(-50, 50)
	spawn_pos.y = spawn_pos.y + rand_range(-75, 75)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	yield(get_tree().create_timer(1.5), "timeout")
	repeat()
