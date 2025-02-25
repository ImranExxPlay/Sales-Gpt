extends Control

@onready var confirmhidepass: Button = $ConfirmPassword/hidepass
@onready var confirmshowpass: Button = $ConfirmPassword/showpass
@onready var showpass: Button = $PasswordField/showpass
@onready var hidepass: Button = $PasswordField/hidepass
@onready var password_field: LineEdit = $PasswordField
@onready var confirm_password: LineEdit = $ConfirmPassword


func _on_hidepass_pressed() -> void:
	showpass.visible = true
	hidepass.visible = false
	password_field.secret = false


func _on_showpass_pressed() -> void:
	showpass.visible = false
	hidepass.visible = true
	password_field.secret = true


func _on_hidepass_confirm_pressed() -> void:
	confirmshowpass.visible = true
	confirmhidepass.visible = false
	confirm_password.secret = false

func _on_showpass_confirm_pressed() -> void:
	confirmshowpass.visible = false
	confirmhidepass.visible = true
	confirm_password.secret = true
