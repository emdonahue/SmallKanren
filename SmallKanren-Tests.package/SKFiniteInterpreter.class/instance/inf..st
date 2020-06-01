deprecated
inf: x
	^  [ :b | x === (1 cons: b) & (self inf: b) ] asGoal | (x === Cons empty)