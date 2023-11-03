extends RigidBody3D


@export var slot_data: SlotData

@onready var sprite_3d: Sprite3D = $Sprite3D
@onready var player = $"../Player"

func _ready():
	sprite_3d.texture = slot_data.item_data.texture
	ItemManager.Pick_Up_Note1.connect(Picking_up)

func Picking_up():
	
	if player.inventory_data.pick_up_slot_data(slot_data):
		queue_free()
	







