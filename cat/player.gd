extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta: float) -> void: #delta = time between frames, measured in seconds. for 60fps, a new frame is generated every 60th of a second. Float allows fps to vary based on the capabilities of the computer running the game.void= godot expects no output from the function.
	
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") # a vector is a combination of an x and y coordinate. ui_+ direction is an arrow key.
	print(input_vector) #printed in godot console
	
	velocity = input_vector * SPEED
	#This script can be used to move the player but it has a problem: the player moves faster diagonally than in a horizontal or vertical direction. Instead, see above
	#velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_right"):
		#velocity.x = SPEED
		
	#if Input.is_action_pressed("ui_left"):
		#velocity.x = -SPEED
	#if Input.is_action_pressed("ui_up"):
		#velocity.y = -SPEED
	#if Input.is_action_pressed("ui_down"):
		#velocity.y = SPEED
	move_and_slide()  #player moves, and when they collide with another object, they slide along the body of that object. For example, if the player runs across the ground, they will slide a bit before stopping.
