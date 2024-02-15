class_name Menu
extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var line_edit = get_node("MenuLayout/TextureRect/LineEdit")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Lobby.visible = false
	$Checklist/CanvasLayer.visible = false
	line_edit.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_gotolobby_pressed():
	$MenuLayout.visible = false
	$Checklist/CanvasLayer.visible = false
	$Lobby.visible = true
	$Lobby/LevelSelect.visible = false
	




func _on_Checklist_pressed():
	$Lobby.visible = false
	$Checklist/CanvasLayer.visible = true


func _on_remove_item_pressed():
	pass # Replace with function body.





func _on_Return_pressed():
	$Lobby.hide()
	$Lobby/Players.hide()
	$Lobby/Connect.show()
	$Lobby/LevelSelect.hide()
	$Checklist/CanvasLayer.hide()
	$MenuLayout.show()
	pass # Replace with function body.


func _on_EnterCode_pressed():
	print(line_edit.text)
	if (line_edit.text == "12345"):
		$MenuLayout/TextureRect/RichTextLabel.show()
	pass # Replace with function body.
