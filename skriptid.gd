extends Node
#karl Robert MAsing
#01.25.2023

var rng = RandomNumberGenerator.new()
func _ready():
	print("----------ÜL1----------")
	var nimi = "karl"
	var elud = 100
	var dmg = 2
	var elus = elud + dmg
	
	
	print(nimi)
	print(elud)
	print("elud parast heali ", elus)
	print("nime pikkus: ",len(nimi))
	rng.randomize()
	var rand = rng.randi_range(1,19)
	print(rand)
	
	
