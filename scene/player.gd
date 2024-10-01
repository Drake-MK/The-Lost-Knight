extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -250.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	# play animation
	if is_on_floor():
		pass
		if direction == 0 :
			animated_sprite_2d.play("idle")
		elif direction != 0 :
			animated_sprite_2d.play("run")
	else :
		animated_sprite_2d.play("jump")	
	
	
	
	
	# flip accord to ddir
	if direction > 0:
		animated_sprite_2d.flip_h= false
	elif  direction < 0 :
		animated_sprite_2d.flip_h = true
	if direction:
		velocity.x = direction * SPEED
		
				
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
