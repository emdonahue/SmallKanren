*SmallKanren-Core
=/= aCons
	<todo> "remove along with disunifycons, disunifyemptycons"
	^ super =/= aCons.
	"^ self ifEmpty: [ aCons skDisunifyEmptyCons ] ifNotEmpty: [ aCons skDisunifyCons: self ]"