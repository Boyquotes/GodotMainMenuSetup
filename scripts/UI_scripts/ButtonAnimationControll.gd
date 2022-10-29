extends Button

onready var btn_anim_player = $ButtonAnimationPlayer

func _ready() -> void:
	# we use "assert function to detect somethig wrong with signal"
	assert(self.connect("mouse_entered", self, "on_mouse_entered") == 0)
	assert(self.connect("mouse_exited", self, "on_mouse_exited") == 0)
	# reset size btn
	btn_anim_player.play("RESET")

func on_mouse_entered() -> void:
	btn_anim_player.play("hover")

func on_mouse_exited() -> void:
	btn_anim_player.play_backwards("hover")

