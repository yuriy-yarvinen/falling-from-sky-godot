extends CharacterBody2D

@export var score: PackedScene
# Called when the node enters the scene tree for the first time.

const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 200.0


func _physics_process(delta):
		
	if not is_on_floor():
		velocity.y += gravity * delta

	move_and_slide()
	
	if is_on_floor():
		GameEvents.fall.emit()
		queue_free()

