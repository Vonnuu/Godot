extends Node

var rng = RandomNumberGenerator.new()
var  koletis=5000
var kuulid=100
var pihtus=0.0
var efekt=0.0
var skoor=0


func _ready():
	
	print("---------------------ÜL6------------------------")
	
func _process(delta):
	$taustapilt/life.text = "Life: %s" % koletis
	$taustapilt/score.text = "Score: %s" %skoor
	$taustapilt/ammo.text = "Ammo: %s" %kuulid
	
	
	if Input.is_action_just_pressed("laskmine") and kuulid > 0:
		rng.randomize()
		var dmg = rng.randi_range(30,65)
		print("piu piu")
		$taustapilt/piupiu.text = "piupiu"
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
			get_tree().paused = true
			$taustapilt/life.text = "Life: %s" % koletis
			$taustapilt/gameover.text = "Game Over"
			$taustapilt/efekt.text = "Effektiivsus: %s" % efektiivss
		
	if Input.is_action_just_pressed("Reload"):
		
		print("LAEN.....")
		kuulid=100
		print("Salves: ", kuulid)
		
		
		
