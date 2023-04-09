tests
testProjecto
	self assert: ([ :a | a projecto: [ :b | b === 1] ] asGoal runList) equals: #((1)) asConsR.
	self assert: ([ :a | SKGoal project: a o: [ :b | b === 1] ] asGoal runList) equals: #((1)) asConsR.
	self assert: ([ :a | SKGoal projecto: [ :st | SKFailure singleton ] ] asGoal runList) equals: Cons empty.
	self assert: ([ :a | SKGoal projecto: [ :st | st unify: a with: 1 ] ] asGoal runList) equals: #((1)) asConsR.
	