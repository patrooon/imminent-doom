extends Control
@export var doom_bar:TextureProgressBar
@export var money:Label
@export var stone:Label
@export var machines:Label
@export var research:Label
@export var cursor:TextureRect
var progress:float=0
var money_amount:int=100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress+=delta
	doom_bar.value=progress
	money.text=str(Resources.money_amount)
	research.text=str(Resources.research)
func _on_button_pressed() -> void:
	cursor.texture=$HBoxContainer2/Button.icon
