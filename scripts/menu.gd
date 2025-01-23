extends Control

func _ready():
	$MarginContainer/VBoxContainer/Play.grab_focus()

func _on_play_pressed():
 # Cambiar a la escena del juego
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_about_pressed(): #Boton de info
	print("Todas putas")


func _on_exit_pressed(): #Boton de Salir
	get_tree().quit()
