extends Node3D

@export var TSlot: Array[Node3D]
var win = 0
# 0 | 1 | 2 
#---+---+---
# 3 | 4 | 5
#---+---+---
# 6 | 7 | 8

# 0 = N/A | 1 = X | 2 = O

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	win = CheckWin()
	if win != 0: print(win)

func CheckWin():
	#Win Conditions
	#012, 345, 678 -
	if TSlot[0].state == TSlot[1].state and TSlot[0].state == TSlot[2].state:
		if TSlot[0].state != 0:
			if TSlot[0].state != 0:
				return TSlot[0].state
	if TSlot[3].state == TSlot[4].state and TSlot[3].state == TSlot[5].state:
		if TSlot[3].state != 0:
			return TSlot[3].state
	if TSlot[6].state == TSlot[7].state and TSlot[6].state == TSlot[8].state:
		if TSlot[6].state != 0:
			return TSlot[6].state
	#036, 147, 258 |
	if TSlot[0].state == TSlot[3].state and TSlot[0].state == TSlot[6].state:
		if TSlot[0].state != 0:
			return TSlot[0].state
	if TSlot[1].state == TSlot[4].state and TSlot[1].state == TSlot[7].state:
		if TSlot[1].state != 0:
			return TSlot[1].state
	if TSlot[2].state == TSlot[5].state and TSlot[2].state == TSlot[8].state:
		if TSlot[2].state != 0:
			return TSlot[2].state
	#048, 246      X
	if TSlot[0].state == TSlot[4].state and TSlot[0].state == TSlot[8].state:
		if TSlot[0].state != 0:
			return TSlot[0].state
	if TSlot[2].state == TSlot[4].state and TSlot[2].state == TSlot[6].state:
		if TSlot[2].state != 0:
			return TSlot[2].state
	return 0
