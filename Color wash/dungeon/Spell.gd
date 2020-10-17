extends RigidBody2D


var projectile_speed = 400
var life_time = 3



func _ready():
	apply_impulse(Vector2(), Vector2(projectile_speed, 0).rotated(rotation))
	selfDestruct()

func selfDestruct():
	yield(get_tree().create_timer(life_time), "timeout")
	queue_free()

func _on_Spell_body_entered(body):
	self.hide()
