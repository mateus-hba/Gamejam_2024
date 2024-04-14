extends CharacterBody2D
class_name FlyingSkull

var _player_ref = null
var _move_speed = 10

@export_category("Objects")
@export var _texture: Sprite2D = null
@export var _animation: AnimationPlayer = null

func _on_detection_area_body_entered(_body) -> void:
	if _body.is_in_group("character"):
		_player_ref = _body


func _on_detection_area_body_exited(_body) -> void:
	if _body.is_in_group("character"):
		_player_ref = null
		

func _physics_process(_delta: float) -> void:
	if _player_ref != null:
		var _direction: Vector2 = global_position.direction_to(_player_ref.global_position)
		velocity = _direction * _move_speed
		move_and_slide()
