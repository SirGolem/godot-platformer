extends Node

@onready var score_label = $ScoreLabel

var score = 0

func increment_score():
	score += 1
	score_label.text = "Score: " + str(score)
