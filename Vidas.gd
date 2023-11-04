extends Area

signal recolectar_vidas

func _on_Vidas_Ocultas_body_entered(body):
	if body.is_in_group("Jugador"):
		emit_signal("recolectar_vidas")
		queue_free()
