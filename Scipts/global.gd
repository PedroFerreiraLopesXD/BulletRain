extends Node

signal player_morreu
signal metralhadora_liberada

var player_velocidade = 10
var player_vidas = 222222222
var pontos = 0
var tem_metralhadora

func pontuar(valor: int):
	pontos += valor
	if pontos >= 10 and not tem_metralhadora:
		tem_metralhadora = true
		metralhadora_liberada.emit()

func zerar_pontos():
	pontos = 0

func perder_vida():
	player_vidas -= 1
	if player_vidas <= 0:
		player_vidas = 0
		player_morreu.emit()

func resetar():
	player_vidas = 3
	zerar_pontos()
	get_tree().reload_current_scene.call_deferred()
