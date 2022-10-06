extends KinematicBody2D


var velocity = Vector2.ZERO
var speed = 200


func _ready():
	pass 


func _physics_process(_delta):
	get_input()
	#velocity = move_and_slide(velocity)
	#print(get_last_slide_collision())
	pass

func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed("up"):
		velocity.y = -1
	if Input.is_action_pressed("down"):
		velocity.y = 1
	if Input.is_action_pressed("left"):
		velocity.x = -1
	if Input.is_action_pressed("right"):
		velocity.x = 1
	velocity = velocity.normalized() * speed
	
	
#if Input.is_action_pressed("e"):
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Computer":
			$Label.visible = true
			if Input.is_action_pressed("e"):
				# warning-ignore:return_value_discarded
				get_tree().change_scene("res://Scenes/ComputerScreen.tscn")
		else:
			$Label.visible = false
	
	velocity = move_and_slide(velocity)
