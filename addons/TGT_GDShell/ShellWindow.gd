extends CanvasLayer

var _command_pool = preload("res://addons/TGT_GDShell/ShellCommands.gd")
var label := RichTextLabel.new();
var line := LineEdit.new();

func _ready() -> void:
	_command_pool = _command_pool.new()
	_command_pool.hi()
	$WindowDialog.call_deferred("popup")
	$WindowDialog/VBoxContainer/HSplitContainer.set_dragger_visibility(0)
