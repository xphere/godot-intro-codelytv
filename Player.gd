extends KinematicBody2D
class_name Player


# Declare member variables here. Examples:
export var speed := 256.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var movement := Vector2(
		Input.get_action_strength("ui_right") -
		Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") -
		Input.get_action_strength("ui_up")
	).normalized()

	move_and_slide(movement * speed)
