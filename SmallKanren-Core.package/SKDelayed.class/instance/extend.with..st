delaying
extend: aVar with: aValue
	<type: #isSKVar type: #AnyC returns: #(AndC SKDelayed #packageC)>
	^  (state extend: aVar with: aValue) delay: delayedVars 