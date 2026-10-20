extends Node2D

const PRE_INIMIGO = preload("res://Scenes/inimigo.tscn")
const MARGEM_ARANHA = 40
var temporizador_aranha = 0.0
var invocar_aranha = 2.0

func gerar_inimigo():
	var inimigo = PRE_INIMIGO.instantiate()
	var largura_maxima = get_viewport_rect().size.x - MARGEM_ARANHA
	inimigo.position = Vector2(randi_range(MARGEM_ARANHA, largura_maxima), -100)
	add_child(inimigo)

func _process(delta: float) -> void:
	temporizador_aranha += delta
	if temporizador_aranha >= invocar_aranha:
		gerar_inimigo()
		temporizador_aranha = 0.0
