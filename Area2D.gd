extends Area2D

var dead = false;





func _process(delta):
	if dead == false:
		$AnimatedSprite.play("idle");
			

			
			
func _on_enemy_area_entered(area):
	if area.is_in_group("Sword"):
		dead = true;
		$AnimatedSprite.play("destoy");


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "destoy":
		queue_free();
