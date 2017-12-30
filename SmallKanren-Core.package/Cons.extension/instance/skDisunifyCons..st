*SmallKanren-Core
skDisunifyCons: aCons
	^ self ifEmpty: SKSuccess  singleton ifNotEmpty: [ :s |  aCons peek =/= s peek andDisunify: aCons step with: s step ]