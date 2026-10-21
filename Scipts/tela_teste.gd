extends Node2D

const PRE_FAVO = preload("res://Scenes/favo_mel.tscn")
const PRE_INIMIGO = preload("res://Scenes/inimigo.tscn")
const MARGEM_FAVO = 12
const MARGEM_ARANHA = 40
var temporizador_aranha = 0.0
var temporizador_favo = 5
var inbocar_favo = 2.0
var invocar_aranha = 0.2

func gerar_inimigo():
	var inimigo = PRE_INIMIGO.instantiate()
	var largura_maxima = get_viewport_rect().size.x - MARGEM_ARANHA
	inimigo.position = Vector2(randi_range(MARGEM_ARANHA, largura_maxima), -100)
	add_child(inimigo)

func gerar_favo():
	var favo = PRE_FAVO.instantiate()
	var largura_maxima_favo = get_viewport_rect().size.x - MARGEM_FAVO
	favo.position = Vector2(randi_range(MARGEM_FAVO, largura_maxima_favo), -100)
	add_child(favo)

func _process(delta: float) -> void:
	temporizador_aranha += delta
	if temporizador_aranha >= invocar_aranha:
		gerar_inimigo()
		temporizador_aranha = 0.0
	temporizador_favo += delta
	if temporizador_favo >= inbocar_favo:
		gerar_favo()
		temporizador_favo = 0.0
