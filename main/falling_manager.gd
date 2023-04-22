extends Node

@export var falling_object: PackedScene
@onready var timer = $Timer

func _ready():
	timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():	
	var new_object = falling_object.instantiate() as CharacterBody2D
	get_parent().add_child(new_object)
	new_object.global_position.y = 0
	new_object.global_position.x = randf_range(1, 1000)
	timer.start()
