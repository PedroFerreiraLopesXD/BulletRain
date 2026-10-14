extends CharacterBody2D

func _process(delta: float) -> void:
	var direcao = Vector2.ZERO
	direcao.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	direcao.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")

	translate(direcao * 4)
