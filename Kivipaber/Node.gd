extends Node
var rng = RandomNumberGenerator.new()

var skoorP=0
var skoorE=0
var raha=10

 
func _process(delta):
	$TextureRect/punktid1.text = "Skoor: %s" %skoorP
	$TextureRect/punktid2.text = "Skoor: %s" %skoorE
	#$TextureRect/raha.text = "Sinu raha: %s" %raha
	#paber1
	#kaarid2
	#kivi3
	if skoorE == 10:
		var kaotus = "kuri mees voitis"
		$TextureRect/Tulemus.text = "Tulemus: %s" %kaotus
		$TextureRect/paber.disabled = true
		$TextureRect/KIVI.disabled = true
		$TextureRect/kaarid.disabled = true
	elif skoorP == 10:
		var voit = "Sina voitsid"
		$TextureRect/Tulemus.text = "Tulemus: %s" %voit
		$TextureRect/paber.disabled = true
		$TextureRect/KIVI.disabled = true
		$TextureRect/kaarid.disabled = true
	elif skoorP and skoorE == 10:
		$TextureRect/Tulemus.text = "Tulemus: Kummikud mangisite viiki"
		$TextureRect/paber.disabled = true
		$TextureRect/KIVI.disabled = true
		$TextureRect/kaarid.disabled = true
		
		
		
 
func _on_KIVI_pressed():
	$TextureRect/VALIK1.text = "kivi"
	rng.randomize()
	var ene = rng.randi_range(1,4)
	if ene == 1:
		$TextureRect/VALIK2.text="paber"
	elif ene == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif ene == 3:
		$TextureRect/VALIK2.text="kivi"
	
	if ene == 3:
		skoorE+=1
		skoorP+=1
	elif ene == 2:
		skoorP+=1
	else:
		skoorE+=1
	
func _on_paber_pressed():
	$TextureRect/VALIK1.text = "paber"
	rng.randomize()
	var ene = rng.randi_range(1,4)
	if ene == 1:
		$TextureRect/VALIK2.text="paber"
	elif ene == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif ene == 3:
		$TextureRect/VALIK2.text="kivi"
	
	if ene == 1:
		skoorE+=1
		skoorP+=1
	elif ene == 3:
		skoorP+=1
	else:
		skoorE+=1
		
		
 
func _on_kaarid_pressed():
	$TextureRect/VALIK1.text = "kaarid"
	rng.randomize()
	var ene = rng.randi_range(1,4)
	if ene == 1:
		$TextureRect/VALIK2.text="paber"
	elif ene == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif ene == 3:
		$TextureRect/VALIK2.text="kivi"
		
	if ene == 2:
		skoorE+=1
		skoorP+=1
	elif ene == 1:
		skoorP+=1
	else:
		skoorE+=1
	
	

 
func _on_restard_pressed():
	get_tree().paused = false
	
	get_tree().reload_current_scene()
