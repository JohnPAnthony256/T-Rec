extends Node2D


#dino types: murdersaurus, tractorsaurus, giraffeosaurus, trino, eggosaurus
#trino vars
var trinoHunger:int = 0
var trinoFoodAvail:bool
var trinoFoodCount:int = 10
var trinoStress:int = 0
var trinoStampede:bool = false
var hungryPredTrino:bool = false
var trinoPopulation:int
#eggosaurus vars
var eggoHunger:int
var eggoFoodAvail:bool
var eggoFoodCount:int
var eggoStress:int
var eggoStampede:bool
var hungryPredEggo:bool
var eggoPopulation:int



#general
var fenceStrength:int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#trinos
func _trinoFoodCheck():
#	this function feeds the trinosaur if food is available
	if trinoHunger >= 5:
		if trinoFoodAvail:
			trinoFoodCount -= 1
			trinoHunger = 0
			trinoStress -= 4
		else:
			trinoStress += 4
func _trinoStampedeCheck():
#	checking if trino will stampede
	if trinoStress >= 10:
		trinoStampede = true
	else:
		trinoStampede = false
func _predatorCheckTrino():
#	checks if there is a predator, and if there is, one trino dies
	if hungryPredTrino:
		trinoPopulation -= 1
		trinoStress += 5
		_trinoStampedeCheck()
	else:
		pass
func _trinoFenceSmash(fenceElectric):
#	this smashes the fence if possible (trino)
#	input is bool, is fence electric?
	var trinoPower = trinoPopulation * 5
	if fenceElectric:
		fenceStrength = 60
	else:
		fenceStrength = 20
	if trinoPower >= fenceStrength:
		if (trinoPower - 10) >= fenceStrength:
			pass #SMASH THE FENCE
		else:
			trinoPopulation -= 1
			#AND SMASH THE FENCE
	else:
		trinoPopulation -= 1


func _eggoFoodCheck():
#	this function feeds the eggosaurus if food is available
	if eggoHunger >= 5:
		if eggoFoodAvail:
			eggoFoodCount -= 1
			eggoHunger = 0
			eggoStress -= 4
		else:
			eggoStress += 4
func _eggoStampedeCheck():
#	checking if eggo will stampede
	if eggoStress >= 10:
		eggoStampede = true
	else:
		eggoStampede = false
func _predatorCheckEggo():
#	checks if there is a predator, and if there is, one eggo dies
	if hungryPredEggo:
		eggoPopulation -= 1
		eggoStress += 5
		_eggoStampedeCheck()
	else:
		pass
func _eggoFenceSmash(fenceElectric):
#	this smashes the fence if possible (eggo)
#	input is bool, is fence electric?
	var eggoPower = eggoPopulation * 5
	if fenceElectric:
		fenceStrength = 60
	else:
		fenceStrength = 20
	if eggoPower >= fenceStrength:
		if (eggoPower - 10) >= fenceStrength:
			pass #SMASH THE FENCE
		else:
			eggoPopulation -= 1
			#AND SMASH THE FENCE
	else:
		eggoPopulation -= 1
