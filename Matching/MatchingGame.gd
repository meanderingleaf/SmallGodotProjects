extends Node2D

var potential_values = [ 
	"Clubs6", "Clubs6", "ClubsA", "ClubsA", "ClubsQ", "ClubsQ", "Clubs2", "Clubs2",
	"Hearts6", "Hearts6", "HeartsA", "HeartsA", "HeartsQ", "HeartsQ", "Hearts2", "Hearts2"
	]

@onready
var timer = $"Timer"
var cards = []
var waiting = false
var rng = RandomNumberGenerator.new()
@export var cardResource : Resource

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.connect("timeout", check_match)
	#make the cards
	var c = 0
	for y in 4:
		for x in 4:
			c += 1
			var newCard = cardResource.instantiate()
			newCard.position.x = 300 * x
			newCard.position.y = 300 * y
			var randomIndex = rng.randi_range(0, potential_values.size()-1)
			var cardName = potential_values.pop_at(randomIndex)
			newCard.set_value( cardName )
			add_child(newCard)
		
	pass # Replace with function body.

func card_clicked(obj):
	cards.append(obj)
	
	if cards.size() > 1 and not waiting:
		waiting = true
		timer.start()


func check_match():
	if cards[0].value == cards[1].value:
		cards[0].queue_free()
		cards[1].queue_free()
	else:
		cards[0].flip_back()
		cards[1].flip_back()	

	cards = []
	waiting = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
