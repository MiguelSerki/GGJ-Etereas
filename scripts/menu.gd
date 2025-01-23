extends Control

func _ready():
	$MarginContainer/VBoxContainer/Play.grab_focus()

func _on_play_pressed():
 # Boton de inicio que cambia a la escena del juego
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_about_pressed(): #Boton de info
	get_tree().change_scene_to_file("res://scenes/sobre_nosotras.tscn")


func _on_exit_pressed(): #Boton de Salir
	get_tree().quit()
