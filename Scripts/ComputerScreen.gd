extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	#$Label.text = "The employer ghosted you"
	var randomNumber = randi() % 5
	
	var emailText
	
	if randomNumber == 0:
		emailText = "The employer ghosted you"
	elif randomNumber == 1:
		emailText = "Thank you for applying. Although your resume was very impressive, we have painfully decided against hiring you."
	elif randomNumber == 2:
		emailText = "no"
	elif randomNumber == 3:
		emailText = "haha, no"
	elif randomNumber == 4:
		emailText = "still no"
		
	$ItemList.add_item(emailText)
	
	pass # Replace with function body.


func _on_ChangeSceneButton_pressed():
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/HomeScene.tscn")
	pass # Replace with function body.
