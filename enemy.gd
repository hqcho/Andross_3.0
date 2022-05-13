extends KinematicBody

var spd = rand_range(50,150)

func _physics_process(delta):
	move_and_slide(Vector3(0,0,spd))
	if transform.origin.z > 10:
		queue_free()
