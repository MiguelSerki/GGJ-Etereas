extends Label

# Variable para guardar el nuevo nombre
var new_title: String = "Nuevo Título"

func update_title():
	# Comprueba si el texto actual es diferente al nuevo título
	var titulo = Dialogic.VAR.get_variable("Titulo_Chat")
	if text != titulo:
		text = titulo  # Cambia el texto al nuevo título
		print("El título ha sido actualizado a: " + titulo)
	else:
		print("El título ya tiene el valor: " + titulo)
