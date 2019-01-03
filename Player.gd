extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_SPEED = 200
const ACCELERATION = 50
const JUMP_HEIGHT = -550

var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed('ui_right'):
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play('Run')
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed('ui_left'):
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play('Run')
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
	else:
		$AnimatedSprite.play('Idle')
		motion.x = lerp(motion.x, 0, 0.20)
	
	if is_on_floor():
		if Input.is_action_just_pressed('ui_select') || Input.is_action_just_pressed('ui_up'):
			motion.y = JUMP_HEIGHT
	else:
		if motion.y < 0:
			$AnimatedSprite.play('Jump')
		else: 
			$AnimatedSprite.play('Fall')
	
	motion = move_and_slide(motion, UP)