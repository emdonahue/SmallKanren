inspecting
jumpTo: aStream withRunner: aRunner
	^aStream == self ifTrue: [ super jumpTo: aStream withRunner: aRunner ]
	 ifFalse: [ (aRunner copy stream: aStream) ]
	
	