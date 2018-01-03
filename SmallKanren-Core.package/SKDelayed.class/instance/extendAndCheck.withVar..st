undelaying
extendAndCheck: aVar withVar: bVar
	"IF there is only 1 remaining delay constraint AND it is on aVar AND the continuation does NOT introduce new delays, THEN we can return the pure, undelayed state."

	<type: #isSKVar type: #isSKVar returns: #(AndC SKDelayed #packageC)>
	<todo>
	^ (delayedVars remove: [ :v | v = aVar ])
		ifEmpty: [ state extendAndCheck: aVar with: bVar ]
		ifNotEmpty: [ "state constraints keysAndValuesDo: [ :k :v | 
			k ~= aVar & v isDelayed
				ifTrue: [ ^ self extendButDelayWith: aVar and: aValue ] ]" "If there are extra delay constraints, stay delayed." "Otherwise, if we are about to fire the last known delay constraint, let it decide what to return." "^ ((state extend: aVar with: aValue) asDelayed checkConstraintsOn: aVar boundTo: aValue) asDelayed" "^ state extendAndCheck: aVar with: aValue" self extendButDelayWith: aVar and: bVar ]
	"^ self extendAndCheck: aVar with: bVar"
	"^ self extendButDelayWith: aVar and: bVar"
	"state constraints
		keysAndValuesDo: [ :k :v | 
			k ~= aVar & v isDelayed
				ifTrue: [ self halt.
					^ ((state extend: aVar with: bVar) asDelayed checkConstraintsOn: aVar boundTo: bVar) asDelayed ] ].	
	s := state extendAndCheck: aVar with: bVar.
	self assert: [ s isDelayed ].
	^ s"