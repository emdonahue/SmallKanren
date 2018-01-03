delaying
extend: aVar with: aValue
	<type: #isSKVar type: #AnyC returns: #(AndC SKDelayed #packageC)>
	^ self class new state: (state extend: aVar with: aValue)