extends Spatial

var vidas = 5

func _on_VidaO1_recolectar_vidas():
	vidas +=1
	get_node("CanvasLayer/Texto_Vidas").text= "Vidas Disponibles: " + String(vidas)
