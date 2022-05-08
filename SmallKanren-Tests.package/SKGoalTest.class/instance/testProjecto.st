tests
testProjecto
	self assert: ([ :a | a projecto: [ :b | b === 1] ] asGoal run) equals: #((1)) asConsTree.
	self assert: ([ :a | SKGoal project: a o: [ :b | b === 1] ] asGoal run) equals: #((1)) asConsTree.
	self assert: ([ :a | SKGoal projecto: [ :st | SKFailure empty ] ] asGoal run) equals: Cons empty.
	self assert: ([ :a | SKGoal projecto: [ :st | st unify: a with: 1 ] ] asGoal run) equals: #((1)) asConsTree.
	