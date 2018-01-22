*SmallKanren-Core
skDisunifyCons: aCons
	^ self ifEmpty: SKSucceed  singleton ifNotEmpty: [ :s |  aCons peek =/= s peek andDisunify: aCons step with: s step ]