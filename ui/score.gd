extends CanvasLayer

@onready var label = $%Label

var score: int = 0

func _ready():
	GameEvents.fall.connect(on_fall)
	GameEvents.catch.connect(on_catch)
	

func on_fall():
	score = 0
	label.text = str(score)
	

func on_catch(amount: int):
	score += amount
	label.text = str(score)
