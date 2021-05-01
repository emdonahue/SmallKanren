as yet unclassified
assert: a unifies: b
	| u v |
	u := SKVar new.
	v := SKVar new.
	{ u === a.
	v === b.
	u === v } asGoal runtime next peek isState.