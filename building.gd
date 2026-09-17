class_name Building extends Sprite2D
@export var timer:Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer=Timer.new()
	timer.autostart=true
	add_child(timer)
	timer.timeout.connect(add)
func add()->void:
	Resources.research+=1
# Called every frame. 'delta' is the elapsed time since the previous frame.
