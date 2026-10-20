extends Area2D

var velocidade = 200
var velocidades = [100,200,400,800]

func _ready() -> void:
	velocidade = velocidades.pick_random()

func _process(delta: float) -> void:
	position.y += velocidade * delta
