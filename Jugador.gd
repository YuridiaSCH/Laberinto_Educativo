extends KinematicBody

export var h_sen=0.0010
export var v_sen=0.005

export var velocidad=15

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * h_sen)
		$Camera.rotate_x(-event.relative.y*v_sen)

func _process(delta):
	var vel_actual=Vector3(0,0,0)
	
	if Input.is_action_pressed("adelante"):
		vel_actual.z-=velocidad	
	if Input.is_action_pressed("atras"):
		vel_actual.z+=velocidad
		
	if Input.is_action_pressed("izquierda"):
		vel_actual.x-=velocidad	
	if Input.is_action_pressed("derecha"):
		vel_actual.x+=velocidad
		
	vel_actual=vel_actual.rotated(Vector3(0,1,0), rotation.y)
		
	move_and_slide(vel_actual)
