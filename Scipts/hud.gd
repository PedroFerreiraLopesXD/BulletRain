extends Node2D

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
