extends Node2D

var heroi_nome
var heroi_xp

var herois = []
var heroi = []

var output = ""

func _process(_delta):
	input_heroi(heroi_nome, heroi_xp)
	output = classificar_heroi()
	
func input_heroi(heroi_nome, heroi_xp):
	heroi.append(heroi_nome)
	heroi.append(heroi_xp)
	herois.append(heroi)
	
func classificar_heroi():
	var heroi_atual = herois[0]
	var xp = heroi_atual[1]
	
	if (xp < 1000):
		return "Ferro"
	
	if (xp >= 1000 && xp <= 2000):
		return "Bronze"
		
	if (xp > 2000 && xp <= 5000):
		return "Prata"
		
	if (xp > 5000 && xp <= 7000):
		return "Ouro"
		
	if (xp > 7000 && xp <= 8000):
		return "Platina"
		
	if (xp > 8000 && xp <= 9000):
		return "Ascendente"
		
	if (xp > 9000 && xp <= 10000):
		return "Imortal"
		
	if (xp > 10000):
		return "Radiante"
