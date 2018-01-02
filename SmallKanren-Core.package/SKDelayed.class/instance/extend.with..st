delaying
extend: aVar with: aValue
	<type: #isSKVar type: #AnyC returns: #(AndC SKDelayed delayedC)>
	^ self class new state: (state extend: aVar with: aValue)