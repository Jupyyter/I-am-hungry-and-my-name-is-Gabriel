extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	text_box.queue_text("France")
	text_box.queue_text("Year 1772")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#called when the textBox has just finished showing an entire conversation
	if(text_box.endOfConversation):
		get_tree().change_scene_to_file("scenes/lvl1.tscn")
		text_box.endOfConversation=false
