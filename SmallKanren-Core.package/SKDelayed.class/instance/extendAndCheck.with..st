undelaying
extendAndCheck: aVar with: aValue
	"IF there is only 1 remaining delay constraint AND it is on aVar AND the continuation does NOT introduce new delays, THEN we can return the pure, undelayed state."

	"We can add to state something that creates a new state and extends sub/removes var from constraints simultaneously "

	<type: #isSKVar type: #(NotC isSKVar) returns: #SKStream>
	<todo>
	^ (delayedVars remove: [ :v | v = aVar ])
		ifEmpty: [ state extendAndCheck: aVar with: aValue ]
		ifNotEmpty: [ "state constraints keysAndValuesDo: [ :k :v | 
			k ~= aVar & v isDelayed
				ifTrue: [ ^ self extendButDelayWith: aVar and: aValue ] ]" "If there are extra delay constraints, stay delayed." "Otherwise, if we are about to fire the last known delay constraint, let it decide what to return." "^ ((state extend: aVar with: aValue) asDelayed checkConstraintsOn: aVar boundTo: aValue) asDelayed" "^ state extendAndCheck: aVar with: aValue" self extendButDelayWith: aVar and: aValue ]