undelaying
checkConstraintsOn: aVar boundTo: aGround
	^ (state checkConstraintsOn: aVar boundTo: aGround) asDelayed
	