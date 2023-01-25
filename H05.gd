extends Node

var rng = RandomNumberGenerator.new()
var rng2 = RandomNumberGenerator.new()
func _ready():
	print("------------ÜL5--------------------")
	#var tunnid=39
	#var tunnihind=10
	rng.randomize()
	rng2.randomize()
	var tunnihind = rng.randi_range(10,25)
	var tunnid = rng2.randi_range(20,60)
	var hinded = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
	maksud(tunnid,tunnihind)
	hinne(hinded)
	
	
	
func maksud(tunnid,tunnihind):
	if tunnid <=40:
		var tasu=tunnid*tunnihind
		print("Palk on: ", round(tasu), "€")
	else:
		var tasu2=40*tunnihind+(tunnid-40)*1.5*tunnid
		print("Palk on: ", round(tasu2), "€")
		
func hinne(hinded):
	var kesk=0
	for i in hinded:
		kesk+=i
	var keskmine=kesk/(hinded.size())
	print("Eksami keskmine punkti tulemus on: ", keskmine)
	for i in hinded:
		if i >= 90:
			print(i, "p - 5")
		elif i >=75:
			print(i, "p - 4")
		elif i >=50:
			print(i, "p - 3")
		else:
			print(i, "p - 2")
			
