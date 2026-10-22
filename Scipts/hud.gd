extends Node2D

func _process(delta: float) -> void:
	$pontos_valor.text = str(Global.pontos)
	$vida_4.text = str(Global.player_vidas)
	
	if Global.player_vidas >= 4:
		$vida_02.visible = false
		$vida_03.visible = false
		$Label_x.visible = true
		$vida_4.visible = true
	
	else:
		$vida_02.visible = true
		$vida_03.visible = true
		$Label_x.visible = false
		$vida_4.visible = false
		if Global.player_vidas <= 2:
			$vida_03.visible = false
		if Global.player_vidas <= 1:
			$vida_02.visible = false
		if Global.player_vidas <= 0:
			$vida_01.visible = false

func _on_pause_pressed() -> void:
	get_tree().paused = true
	$pause.visible = false
	$play.visible = true
	$quit.visible = true


func _on_play_pressed() -> void:
	get_tree().paused = false
	$pause.visible = true
	$play.visible = false
	$quit.visible = false

func _on_quit_pressed() -> void:
	get_tree().quit()
