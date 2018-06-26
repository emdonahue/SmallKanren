matching
testParsePattern
	self assert: (SKMatchGoal fromPattern: #()) pattern equals: Cons empty.
	self assert: (SKMatchGoal fromPattern: #()) vars isEmpty.
	self assert: (SKMatchGoal fromPattern: #(one))  pattern equals: #one cons.
	self assert: (SKMatchGoal fromPattern: #(1 one))  pattern equals: (1 cons: #one cons).
	self assert: (SKMatchGoal fromPattern: #(1 one)) vars isEmpty.
	self assert: (SKMatchGoal fromPattern: #(@))  pattern size equals: 1.
	self assert: (SKMatchGoal fromPattern: #(@)) vars size equals: 1.
	self assert: (SKMatchGoal fromPattern: #(@))  pattern first isSKVar.
	self assert: (SKMatchGoal fromPattern: #(@ @))  pattern size equals: 2.
	self assert: (SKMatchGoal fromPattern: #(@ @))  pattern first isSKVar.
	self assert: (SKMatchGoal fromPattern: #(@ @))  pattern second isSKVar.
	self assert: (SKMatchGoal fromPattern: #(@ @)) vars size equals: 2.
	self assert: (SKMatchGoal fromPattern: #(1 #'.' 2))  pattern equals: (1 cons: 2).
	self assert: (SKMatchGoal fromPattern: #(1 #'.' @))  pattern cdr isSKVar.
	self assert: (SKMatchGoal fromPattern: #(1 . @)) vars size equals: 1.
	self assert: (SKMatchGoal fromPattern: #(@ #'.' 2))  pattern car isSKVar.
	self assert: (SKMatchGoal fromPattern: #(#()))  pattern equals: Cons empty cons.
	self assert: (SKMatchGoal fromPattern: #(1 #(2)))  pattern equals: (1 cons: 2 cons cons).