extends CharacterBody2D

var limite_tela = 40

func _process(delta: float) -> void:
	var tamanho_tela = get_viewport_rect().size
	var direcao = Vector2.ZERO
	direcao.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	direcao.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")

	if position.x <= limite_tela:
		position.x = limite_tela
	if position.x >= get_viewport_rect().size.x - limite_tela:
		position.x = get_viewport_rect().size.x - limite_tela
	
	if position.y <= limite_tela:
		position.y = limite_tela
	if position.y >= get_viewport_rect().size.y - limite_tela:
		position.y = get_viewport_rect().size.y - limite_tela

	translate(direcao * Global.player_velocidade)
