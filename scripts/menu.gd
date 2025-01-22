extends Control


func _on_play_pressed():
 # Cambiar a la escena del juego
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_about_pressed():
	print("Todas putas")


func _on_exit_pressed():
	get_tree().quit()
