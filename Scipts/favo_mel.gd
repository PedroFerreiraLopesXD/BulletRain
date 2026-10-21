extends Area2D

var velocidade = 50

func _process(delta: float) -> void:
	position.y  += velocidade * delta
	if position.y > get_viewport_rect().size.y + 100:
		queue_free()

func _on_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Player":
		body.som_favomel()
		Global.pontuar(1)
		queue_free()
