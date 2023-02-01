extends Node

var rng = RandomNumberGenerator.new()
var  koletis=100
var kuulid=5
var pihtus=0.0
var efekt=0.0
var skoor=0


func _ready():
	
	print("---------------------ÜL6------------------------")
	
func _process(delta):
	
	if Input.is_action_just_pressed("laskmine") and kuulid > 0:
		rng.randomize()
		var dmg = rng.randi_range(8,15)
		print("piu piu")
		kuulid-=1
		print("Salves: ", kuulid)
		
		var pihtas = bool(randi() % 2)
		
		if pihtas == true:
			koletis-=dmg
			print("koletisel elusi ", koletis, " DMG ", dmg)
			pihtus+=1
			efekt+=1
			skoor+=1
		else:
			pihtus+=1 
			print("Koletise elud ", koletis, " Möödas -0 ")
			
		if koletis <= 0:
			var efektiivss = round(efekt/pihtus*100)
			print("punktid: ", skoor)
			print("Laskude arv: ", pihtus)
			print(efekt)
			print("Efektiivsus: ", efektiivss,"%")
			get_tree().quit()
		
	if Input.is_action_just_pressed("reload"):
		
		print("LAEN.....")
		kuulid=5
		print("Salves: ", kuulid)
		
		
		
		
