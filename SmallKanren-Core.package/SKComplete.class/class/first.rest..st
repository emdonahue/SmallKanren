as yet unclassified
first: aState rest: aStream
	<type: #SKState type: #(NotC SKFailure) type: #SKComplete>
	self haltIf: [ (aState isKindOf: SKState) not ].
	^ self new left: aState; right: aStream.