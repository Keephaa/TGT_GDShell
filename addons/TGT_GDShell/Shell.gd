extends Node

var console_activator_action : String = "ui_accept" 
var use_console_activator_action : bool = true
var debug : bool = true

var _ShellWindow = preload("res://addons/TGT_GDShell/ShellWindow.tscn")
var _active : bool = false


func _ready():
	_ShellWindow = _ShellWindow.instance()
	get_tree().get_current_scene().add_child(_ShellWindow)


func _input(event) -> void:
	if event.is_action_pressed(console_activator_action) and use_console_activator_action:
		toggle_console()


func enable_console() -> void:
	_active = true
	#add code to enable


func disable_console() -> void:
	_active = false
	#add code to disable


func set_console(enable: bool) -> void:
	if enable:
		enable_console()
	else:
		disable_console()


func toggle_console() -> void:
	if _active:
		disable_console()
	else:
		enable_console()
