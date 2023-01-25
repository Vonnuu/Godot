extends Node

var rng = RandomNumberGenerator.new()
var rng2 = RandomNumberGenerator.new()
func _ready():
	print("---------------------------ÜL4--------------------------------")
	var players=["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	players.sort()
	var size=players.size()
	print("mängijaid on: ", size)
	print("Esimene nimi on: ", players[0])
	players.erase("Reyes")
	players.append("Karl")
	var biggest=players.max()
	print("pikim nimi on: ", biggest)
	for i in players:
		print(i)
		
	var player={"Name":"Karl", "str":38, "def":16, "gold":100, "Items":["Sword", "fish", "bow", "potion"]}
	for i in range(5):
		player.gold+=100
	print(player.gold, "kulda")
