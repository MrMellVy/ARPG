extends CharacterBody2D


const SPEED = 140.0


func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += 1.0
	elif Input.is_action_pressed("move_left"):
		velocity.x -= 1.0
	elif Input.is_action_pressed("move_down"):
		velocity.y += 1.0
	elif Input.is_action_pressed("move_up"):
		velocity.y -= 1.0

	move_and_slide()
	
	if velocity.x > 0:
		$AnimatedSprite2D.play("move_right")
	elif velocity.x < 0:
		$AnimatedSprite2D.play("move_left")
	elif velocity.y > 0:
		$AnimatedSprite2D.play("move_down")
	elif velocity.y < 0:
		$AnimatedSprite2D.play("move_up")
	else:
		$AnimatedSprite2D.play()
	
