extends ColorRect

onready var profile_image = get_node("MarginContainer/HBoxContainer/CenterContainer/TextureRect")
onready var type_label = get_node("MarginContainer/HBoxContainer/Labels/TypeLabels/Data")
onready var strength_label = get_node("MarginContainer/HBoxContainer/Labels/StrengthLabels/Data")
onready var vulnerable_label = get_node("MarginContainer/HBoxContainer/Labels/VulnerableLabels/Data")
onready var calm_label = get_node("MarginContainer/HBoxContainer/Labels/CalmLabels/Data")

func _ready():
	var dino_data = load("res://Trino.tres")
	profile_image.texture = dino_data.profile
	type_label.text = dino_data.species
	strength_label.text = dino_data.strength
	vulnerable_label.text = dino_data.vulnerable
	calm_label.text = dino_data.calm 
	
	

