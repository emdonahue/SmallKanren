debugging
force: aVar
	<todo>
	"Is there a more natural way to do this?"
	^ (aVar skUnifyGround: (SKVar new cons: SKVar new) in: self) 