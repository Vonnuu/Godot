extends Node


var rng = RandomNumberGenerator.new()
var rng2 = RandomNumberGenerator.new()
func _ready():
	print("-----------------ÜL3---------------")
	
	var p1=100
	var p2=100
	while p1 > 0 and p2 > 0:
		
		rng.randomize()
		rng2.randomize()
		var dmg1 = rng.randi_range(8,15)
		var dmg2 = rng2.randi_range(9,18)
		p2-=dmg1
		p1-=dmg2
		print("P1 Hit P2: ", dmg1," P2 Life: ", p2)
		print("P2 Hit P1: ", dmg2," P1 Life: ", p1)
	if p1 > 0:
		print("Game Over")
		print("P1 voitis")
	elif p2 > 0:
		print("Game Over")
		print("P2 voitis")
	elif 0 > p2 and 0 > p1:
		print("molemad on surnud")
		
