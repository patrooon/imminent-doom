extends Control
@export var doom_bar:TextureProgressBar
@export var money:Label
@export var stone:Label
@export var machines:Label
var progress:float=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress+=delta
	doom_bar.value=progress
