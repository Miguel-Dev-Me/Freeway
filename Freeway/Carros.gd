extends RigidBody2D


func _ready():
	var cordocarro = $AnimatedSprite.frames.get_animation_names()
	
	# randomizar os carros apresentados em cordocarro
	$AnimatedSprite.animation = cordocarro[randi() % cordocarro.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
