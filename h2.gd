extends Node
#01.25.2023
#Karl Robert Masing



func _ready():
	print("--------------------ÜL2------------------")
	var raha=20
	var asi=10
	var puudu=asi-raha
	var alles = raha-asi
	if raha>=asi:
		print("saad osta asja raha jaab alles: ",alles)
	else:
		print("sa ei saa osta asja sul jaab puudu", puudu)
	
	var kylg1=5
	var kylg2=5
	var arvutus=kylg1*kylg2
	
	if kylg1==kylg2:
		print("kujund on ruut: ", arvutus)
	else:
		print("kujund on ristkylik: ", arvutus)
	
