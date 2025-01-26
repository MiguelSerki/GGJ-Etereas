extends Control

func _ready():
	$MarginContainer/VBoxContainer/Play.grab_focus()


func _on_play_pressed():
 # Boton de inicio que cambia a la escena del juego
	await fade()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_options_pressed() -> void: #Boton de opciones
	get_tree().change_scene_to_file("res://scenes/menu_opciones.tscn")


func _on_about_pressed(): #Boton de info
	get_tree().change_scene_to_file("res://scenes/sobre_nosotras.tscn")


func _on_exit_pressed(): #Boton de Salir
	get_tree().quit()

func fade(fade_in:= false):
	var tween := create_tween().set_parallel()
	if fade_in:
		self.modulate = Color.TRANSPARENT
		tween.tween_property(self, 'modulate', Color.WHITE, 0.2)
	else:
		self.modulate = Color.WHITE
		tween.tween_property(self, 'modulate', Color.TRANSPARENT, 0.2)
	await tween.finished
	await get_tree().create_timer(0.3).timeout
