extends Area2D

var velocidade = 800
var velocidades = [800, 1500, 2000]

func _ready() -> void:
	velocidade = velocidades.pick_random()

func _process(delta: float) -> void:
	position.y += velocidade * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Global.perder_vida()
		queue_free()
