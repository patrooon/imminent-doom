extends Node2D
var grid:Dictionary[Vector2i,Building]
@export var ui:Control
@export var research:Control
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ui.cursor.global_position=get_grid_position_from_mouse()
	if Input.is_action_just_pressed("mouse1"):
		if ui.cursor.texture and Resources.money_amount>=10:
			if check_grid():
				var b=Building.new()
				b.texture=ui.cursor.texture
				grid[get_grid_position_from_mouse()]=b
				add_child(b)
				b.centered=false
				b.global_position=get_grid_position_from_mouse()
				ui.cursor.texture=null
				Resources.money_amount-=10
	if Input.is_action_just_pressed("esc"):
		ui.cursor.texture=null
		if research.visible:
			research.hide()
		else:
			research.show()
func get_grid_position_from_mouse()->Vector2i:
	var mouse_pos:Vector2=get_global_mouse_position()
	var rounded=Vector2i(int(mouse_pos.x)/64*64,int(mouse_pos.y)/64*64)
	return rounded
func check_grid()->bool:
	if grid.has(get_grid_position_from_mouse()):return false
	return true
