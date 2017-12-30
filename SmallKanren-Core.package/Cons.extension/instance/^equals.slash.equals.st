*SmallKanren-Core
=/= aCons
	^ self ifEmpty: [ aCons skDisunifyEmptyCons ] ifNotEmpty: [ aCons skDisunifyCons: self ]