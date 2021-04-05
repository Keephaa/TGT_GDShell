extends EditorPlugin
tool


func _enter_tree():
	add_autoload_singleton("Shell", "res://addons/TGT_GDShell/Shell.gd")
	print("TGT GDShell is now available as singleton 'Shell'")


func _exit_tree():
	remove_autoload_singleton("Shell")
	printerr("TGT GDShell is no longer available as singleton 'Shell' - Check for possible dependencies")
