undelaying
extendAndCheck: aVar withVar: bVar
	"IF there is only 1 remaining delay constraint AND it is on aVar AND the continuation does NOT introduce new delays, THEN we can return the pure, undelayed state."

	<type: #isSKVar type: #isSKVar returns: #(AndC SKDelayed delayedC)>
	<todo>
	^ self extendButDelayWith: aVar and: bVar
	"state constraints
		keysAndValuesDo: [ :k :v | 
			k ~= aVar & v isDelayed
				ifTrue: [ self halt.
					^ ((state extend: aVar with: bVar) asDelayed checkConstraintsOn: aVar boundTo: bVar) asDelayed ] ].	
	s := state extendAndCheck: aVar with: bVar.
	self assert: [ s isDelayed ].
	^ s"