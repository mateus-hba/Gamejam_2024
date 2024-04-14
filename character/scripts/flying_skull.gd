extends CharacterBody2D
class_name FlyingSkull

var _player_ref = null

@export_category("Objects")
@export var _texture: Sprite2D = null
@export var _animation: AnimationPlayer = null


func _on_detection_area_body_entered(body):
	pass # Replace with function body.


func _on_detection_area_body_exited(body):
	pass # Replace with function body.
