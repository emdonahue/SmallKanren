as yet unclassified
first: aState rest: aStream
	<type: #SKSubstitution type: #(NotC SKFailure) type: #SKComplete>
	self haltIf: [ (aState isKindOf: SKSubstitution) not ].
	^ self new left: aState; right: aStream.