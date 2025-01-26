extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	start_example_scene()
	Dialogic.Styles.load_style('Smartphone_Style')
	Dialogic.start("timeline1")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func start_example_scene() -> void:
	fade(true)

## A fade in animation for this example
func fade(fade_in:= false) -> void:
	var tween := create_tween().set_parallel()
	if fade_in:
		self.modulate = Color.TRANSPARENT
		tween.tween_property(self, 'modulate', Color.WHITE, 0.2)
	else:
		self.modulate = Color.WHITE
		tween.tween_property(self, 'modulate', Color.TRANSPARENT, 0.2)
	await tween.finished
	await get_tree().create_timer(0.3).timeout
