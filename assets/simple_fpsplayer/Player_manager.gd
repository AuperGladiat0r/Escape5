extends Node

var player
var cam
var Key = preload("res://3D models/key/key.tscn")

func use_slot_data(slot_data: SlotData):
	var item_data = slot_data.item_data
	
	if item_data.name == "Key":
		var Key1 = Key.instantiate()
		cam.add_child(Key1)
		Key1.position = Vector3(0.244,-0.222,-0.566)
		Key1.rotation = Vector3(.5, -.20,-90 )
		
